#!/usr/bin/env python3
"""Upstream runtime binding regression candidate: inspect process-exit stderr.

Run in separate processes with --mode to-host and --mode buffer-copy.
Both execute the exact same VM function; only output conversion differs.
No tests or messages have been submitted upstream.
"""
import argparse
import gc
import json
import resource
import iree.runtime as rt
import numpy as np

parser = argparse.ArgumentParser()
parser.add_argument("artifact")
parser.add_argument("--mode", choices=["to-host", "buffer-copy"], required=True)
parser.add_argument("--iterations", type=int, default=100)
args = parser.parse_args()


def run():
    config = rt.Config("local-sync")
    with open(args.artifact, "rb") as f:
        module = rt.VmModule.copy_buffer(config.vm_instance, f.read())
    context = rt.VmContext(instance=config.vm_instance, modules=config.default_vm_modules + (module,))
    function = rt.FunctionInvoker(context, config.device, module.lookup_function("row_sum"))
    source = np.ones((7, 16), dtype=np.float32)
    for _ in range(args.iterations):
        result = function(source)
        if args.mode == "to-host":
            output = np.array(result.to_host(), copy=True)
        else:
            mapped = result._buffer_view.map()
            output = np.frombuffer(memoryview(mapped), dtype=np.float32).reshape(7).copy()
        np.testing.assert_array_equal(output, np.full(7, 16, dtype=np.float32))
    print(json.dumps({"mode": args.mode, "iterations": args.iterations, "numerical_pass": True,
                      "peak_process_rss_kib": resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}))


run()
gc.collect()
