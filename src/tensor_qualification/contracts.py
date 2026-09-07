"""Explicit ABI contract and independent numerical reference."""
import numpy as np

ARGUMENTS = {"matmul": ("x", "w"), "bias_relu": ("a", "bias"),
             "row_sum": ("a",), "fragment": ("x", "w", "bias")}


def validate(name, arrays, shape, batch):
    if name not in ARGUMENTS:
        raise ValueError(f"unknown entry point: {name}")
    if type(batch) is not int or batch < 1:
        raise ValueError("batch must be a positive integer")
    if shape["m"] != "?" and batch != shape["m"]:
        raise ValueError(f"static batch must be {shape['m']}")
    sizes = {"x": (batch, shape["k"]), "w": (shape["k"], shape["n"]),
             "a": (batch, shape["n"]), "bias": (shape["n"],)}
    if len(arrays) != len(ARGUMENTS[name]):
        raise ValueError(f"{name} expects {len(ARGUMENTS[name])} operands")
    for key, value in zip(ARGUMENTS[name], arrays):
        if not isinstance(value, np.ndarray) or value.dtype != np.float32:
            raise ValueError(f"{key} must be a float32 ndarray")
        if value.shape != sizes[key]:
            raise ValueError(f"{key} shape {value.shape} does not match {sizes[key]}")
        if not value.flags.c_contiguous:
            raise ValueError(f"{key} must be C-contiguous")


def inputs(shape, batch, seed, kind="normal"):
    rng = np.random.default_rng(seed)
    dims = {"x": (batch, shape["k"]), "w": (shape["k"], shape["n"]),
            "a": (batch, shape["n"]), "bias": (shape["n"],)}
    values = {key: rng.normal(size=size).astype(np.float32) for key, size in dims.items()}
    if kind == "zero":
        values = {key: np.zeros_like(value) for key, value in values.items()}
    elif kind == "cancellation":
        for value in values.values():
            value.flat[::2] *= 1024
            value.flat[1::2] *= -1024
    elif kind == "special":
        for value in values.values():
            value.flat[0] = np.nan
            if value.size > 1:
                value.flat[1] = np.inf
            if value.size > 2:
                value.flat[2] = -np.inf
    elif kind != "normal":
        raise ValueError(kind)
    return values


def reference(name, arrays):
    args = [v.astype(np.float64) for v in arrays]
    with np.errstate(invalid="ignore", over="ignore"):
        if name == "matmul":
            return args[0] @ args[1]
        if name == "bias_relu":
            return np.maximum(args[0] + args[1], 0)
        if name == "row_sum":
            return args[0].sum(axis=1)
        if name == "fragment":
            return np.maximum(args[0] @ args[1] + args[2], 0).sum(axis=1)
    raise ValueError(name)


def roundoff_bound(name, arrays):
    """Conservative forward-error bound for finite, normal float32 arithmetic.

    gamma(2*K) includes separate multiply/add, hence also bounds fused multiply-add.
    ReLU is 1-Lipschitz. These bounds do not depend on observed compiler results.
    """
    args = [v.astype(np.float64) for v in arrays]
    u = 2.0 ** -24
    gamma = lambda n: (n * u) / (1 - n * u)
    if name == "matmul":
        return gamma(2 * args[0].shape[1]) * (np.abs(args[0]) @ np.abs(args[1]))
    if name == "row_sum":
        return gamma(args[0].shape[1]) * np.abs(args[0]).sum(axis=1)
    if name == "bias_relu":
        return u * (np.abs(args[0]) + np.abs(args[1]))
    mm = args[0] @ args[1]
    mm_error = gamma(2 * args[0].shape[1]) * (np.abs(args[0]) @ np.abs(args[1]))
    activation_error = mm_error + u * (np.abs(mm) + np.abs(args[2]) + mm_error)
    activation = np.maximum(mm + args[2], 0)
    return activation_error.sum(axis=1) + gamma(activation.shape[1]) * (activation + activation_error).sum(axis=1)


def compare(actual, expected, rtol=2e-5, atol=2e-5, forward_bound=None):
    if actual.shape != expected.shape or actual.dtype != np.float32:
        raise AssertionError(f"wrong output ABI: {actual.shape}/{actual.dtype}, expected {expected.shape}/float32")
    for classify in (np.isnan, np.isposinf, np.isneginf):
        np.testing.assert_array_equal(classify(actual), classify(expected))
    finite = np.isfinite(expected)
    error = np.abs(actual[finite].astype(np.float64) - expected[finite])
    absrel_bound = atol + rtol * np.abs(expected[finite])
    bound = absrel_bound if forward_bound is None else np.maximum(absrel_bound, forward_bound[finite])
    if np.any(error > bound):
        idx = np.argmax(error / bound)
        raise AssertionError(f"numeric error {error[idx]} exceeds bound {bound[idx]}")
    return {"max_abs_error": float(error.max(initial=0)),
            "max_error_over_bound": float((error / bound).max(initial=0)),
            "max_error_over_absrel": float((error / absrel_bound).max(initial=0)),
            "finite_elements": int(finite.sum()), "nan_elements": int(np.isnan(expected).sum())}
