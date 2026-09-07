"""Fresh-process correctness, cold-start, memory and paired timing worker."""
import argparse
import gc
import json
import os
from pathlib import Path
import random
import resource
import time

IMPORT_START = time.perf_counter_ns()
import numpy as np
from .contracts import ARGUMENTS, inputs, reference, compare, roundoff_bound
from .runtime import Session
IMPORT_NS = time.perf_counter_ns() - IMPORT_START


def correctness(job):
    records = []
    for config, artifact in job["artifacts"].items():
        with Session(artifact, job["shape"]) as session:
            for batch in job["shape"]["batches"]:
                for kind in ("normal", "zero", "cancellation", "special"):
                    data = inputs(job["shape"], batch, job["seed"] + batch, kind)
                    for name, keys in ARGUMENTS.items():
                        args = [data[k] for k in keys]
                        expected = reference(name, args)
                        actual = session.invoke(name, args, batch)
                        bound = roundoff_bound(name, args) if kind == "cancellation" else None
                        numeric = compare(actual, expected, forward_bound=bound)
                        # Same inputs remain unchanged, and repeated execution is stable.
                        before = [v.copy() for v in args]
                        for _ in range(3):
                            repeated = session.invoke(name, args, batch)
                            compare(repeated, expected, forward_bound=bound)
                            np.testing.assert_array_equal(repeated, actual)
                        for old, new in zip(before, args):
                            np.testing.assert_array_equal(old, new)
                        records.append({"config": config, "shape": job["shape"]["id"],
                                        "batch": batch, "entry": name, "kind": kind,
                                        "repetitions": 4, **numeric})
    return {"passed": True, "cases": records}


def cold(job):
    batch, name = job["batch"], job["entry"]
    data = inputs(job["shape"], batch, job["seed"] + batch)
    args = [data[k] for k in ARGUMENTS[name]]
    start = time.perf_counter_ns()
    session = Session(job["artifact"], job["shape"])
    load_ns = time.perf_counter_ns() - start
    start = time.perf_counter_ns()
    actual = session.invoke(name, args, batch)
    first_ns = time.perf_counter_ns() - start
    compare(actual, reference(name, args))
    report = {"import_ns": IMPORT_NS, "module_load_ns": load_ns, "first_invocation_ns": first_ns,
              "peak_process_rss_kib": resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}
    session.close()
    return report


def paired(job):
    rng = random.Random(job["seed"])
    sessions = {k: Session(v, job["shape"]) for k, v in job["artifacts"].items()}
    records = []
    try:
        for batch in job["shape"]["batches"]:
            data = inputs(job["shape"], batch, job["seed"] + batch)
            for name, keys in ARGUMENTS.items():
                args = [data[k] for k in keys]
                expected = reference(name, args)
                for session in sessions.values():
                    for _ in range(8):
                        compare(session.invoke(name, args, batch), expected)
                times = {config: [] for config in sessions}
                orders = []
                gc.disable()
                try:
                    for _ in range(job["samples"]):
                        order = list(sessions)
                        rng.shuffle(order)
                        orders.append(order)
                        for config in order:
                            start = time.perf_counter_ns()
                            actual = sessions[config].invoke(name, args, batch)
                            elapsed = time.perf_counter_ns() - start
                            times[config].append(elapsed)
                            # All timed results also pass the numerical gate.
                            compare(actual, expected)
                finally:
                    gc.enable()
                records.append({"shape": job["shape"]["id"], "batch": batch,
                                "entry": name, "latency_ns": times, "orders": orders})
    finally:
        for session in sessions.values():
            session.close()
    return {"passed": True, "measurements": records,
            "metric": "synchronous Python API end-to-end: validation, input upload, VM call, output host copy"}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("job", type=Path)
    args = parser.parse_args()
    job = json.loads(args.job.read_text())
    os.sched_setaffinity(0, {job["cpu"]})
    result = {"correctness": correctness, "cold": cold, "paired": paired}[job["mode"]](job)
    print(json.dumps(result))


if __name__ == "__main__":
    main()
