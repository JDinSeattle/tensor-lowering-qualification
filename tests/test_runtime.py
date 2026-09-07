"""Real compilation/runtime tests. The dynamic case is an upstream e2e candidate."""
import json
from pathlib import Path
import subprocess
import sys
import numpy as np
import pytest
from tensor_qualification.contracts import ARGUMENTS, compare, inputs, reference
from tensor_qualification.runtime import Session

ROOT = Path(__file__).resolve().parents[1]
SHAPE = json.loads((ROOT / "manifest.json").read_text())["shapes"][-1]


@pytest.fixture(scope="module", params=["false", "true"])
def compiled(request, tmp_path_factory):
    out = tmp_path_factory.mktemp("vmfb") / "dynamic.vmfb"
    compiler = str(Path(sys.executable).parent / "iree-compile")
    subprocess.run([compiler, str(ROOT / "inputs/dynamic.mlir"), "--iree-hal-target-backends=llvm-cpu",
                    "--iree-llvmcpu-target-cpu=host", "--iree-llvmcpu-disable-distribution",
                    f"--iree-opt-data-tiling={request.param}", "-o", str(out)], check=True, capture_output=True)
    return out


@pytest.mark.parametrize("batch", [1, 7, 64])
def test_dynamic_batch_all_entries_execute_real_runtime(compiled, batch):
    data = inputs(SHAPE, batch, 123 + batch)
    with Session(compiled, SHAPE) as session:
        for name, keys in ARGUMENTS.items():
            args = [data[key] for key in keys]
            compare(session.invoke(name, args, batch), reference(name, args))
            # Changing runtime operands changes outputs, excluding folded test inputs.
            zeros = [np.zeros_like(a) for a in args]
            actual = session.invoke(name, zeros, batch)
            np.testing.assert_array_equal(actual, reference(name, zeros))


def test_owned_output_survives_context_and_next_invocation(compiled):
    with Session(compiled, SHAPE) as session:
        first = session.invoke("row_sum", [np.ones((7, 16), np.float32)], 7)
        session.invoke("row_sum", [np.zeros((7, 16), np.float32)], 7)
    assert first.flags.owndata
    np.testing.assert_array_equal(first, np.full(7, 16, np.float32))


def test_reject_bad_artifact_at_native_loader(tmp_path):
    artifact = tmp_path / "corrupt.vmfb"
    artifact.write_bytes(b"not a vm flatbuffer")
    with pytest.raises(ValueError, match="(?i)(mismatch|invalid|buffer|archive|module|flatbuffer)"):
        Session(artifact, SHAPE)


def test_compiler_rejects_static_shape_mismatch(tmp_path):
    bad = (ROOT / "inputs/tiny.mlir").read_text().replace("tensor<32x16xf32>", "tensor<31x16xf32>")
    source = tmp_path / "invalid.mlir"
    source.write_text(bad)
    proc = subprocess.run([str(Path(sys.executable).parent / "iree-compile"), str(source),
                           "--iree-hal-target-backends=llvm-cpu", "-o", str(tmp_path / "invalid.vmfb")],
                          capture_output=True, text=True)
    assert proc.returncode > 0
    assert "error:" in proc.stderr and "linalg.matmul" in proc.stderr
    assert not (tmp_path / "invalid.vmfb").exists()
