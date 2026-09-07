# Resume and interview evidence

Use these only after reproducing the project and understanding the results.

**English resume bullets**

- Built a reproducible IREE/MLIR-to-CPU qualification pipeline for matmul, elementwise,
  reduction, and a fused network fragment; validated 192 static/dynamic numerical cases
  with independent float64 references, special-value checks, and repeated execution.
- Compared CPU data-tiling configurations across 24 paired workloads, preserving stage IR,
  LLVM code, raw latency samples, and separate cold-start/RSS measurements; measured a
  1.11× geometric mean API speedup and retained a 1.14× worst latency regression on an i9-13900K.
- Isolated an IREE Python output-mapping lifetime diagnostic and built a version-pinned
  synchronous copy adapter, with a controlled reproducer and automated ownership tests.

**中文面试切入点**

- 输入来自运行时参数，不能靠常量折叠“通过测试”。如何验证：更换输入、对照输出、检查 dispatch 与目标代码。
- 动态 M 并不代表任意动态 shape：本项目固定 K/N，明确拒绝非连续数组与非正 batch。
- 为什么逐项检查 NaN/Inf？只计算最大绝对误差可能把 NaN 传播错误漏掉。
- 为什么相消案例需要误差界？相对误差在接近零的参考结果上会失去意义；界来自输入规模和浮点运算模型。
- 为什么 tiling 有退化？额外 packing/dispatch 可能盖过小矩阵的计算收益；证据支持这一解释，但没有计数器归因。
- 13 µs 并不等于内核执行时间：计时包含 Python ABI、上传/映射和输出复制。
- RSS 包含 Python/NumPy/IREE；不能把它写成张量峰值内存。
- 私有 `_buffer_view` 是明确的版本维护成本。升版本前必须重跑回归，不能声称实现了通用异步 runtime。

The upstream candidates are local and unsubmitted. Do not describe this as an
accepted IREE contribution, compiler pass fix, or production serving platform.
