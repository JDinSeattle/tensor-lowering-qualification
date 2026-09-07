"""Explicit ownership of a real IREE VM context; no SystemContext/BoundModule cycle."""
import gc
from pathlib import Path
import iree.runtime as rt
import numpy as np
from .contracts import validate


class Session:
    def __init__(self, artifact, shape):
        self.shape = shape
        self.config = rt.Config("local-sync")
        self.module = rt.VmModule.copy_buffer(self.config.vm_instance, Path(artifact).read_bytes())
        self.context = rt.VmContext(instance=self.config.vm_instance,
                                    modules=self.config.default_vm_modules + (self.module,))
        self.functions = {name: rt.FunctionInvoker(self.context, self.config.device,
                                                    self.module.lookup_function(name))
                          for name in ("matmul", "bias_relu", "row_sum", "fragment")}

    def invoke(self, name, arrays, batch):
        validate(name, arrays, self.shape, batch)
        result = self.functions[name](*arrays)
        # IREE 3.11.0 MappedMemory.asarray (used by to_host) retains mappings on
        # this wheel. Map through the buffer protocol, then own the bytes.
        # _buffer_view is a version-pinned private API; regression coverage below
        # protects this local-sync-only adapter. No asynchronous device supported.
        mapped = result._buffer_view.map()
        return np.frombuffer(memoryview(mapped), dtype=result.dtype).reshape(result.shape).copy()

    def close(self):
        self.functions.clear()
        self.context = self.module = self.config = None
        gc.collect()

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        self.close()
