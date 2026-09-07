import numpy as np
import pytest
from tensor_qualification.contracts import compare, reference, roundoff_bound, validate

SHAPE = {"m": "?", "k": 32, "n": 16}


@pytest.mark.parametrize("bad,match", [
    (np.ones((7, 31), dtype=np.float32), "shape"),
    (np.ones((7, 32), dtype=np.float64), "float32"),
    (np.ones((32, 7), dtype=np.float32).T, "C-contiguous"),
])
def test_bad_operands_have_actionable_diagnostics(bad, match):
    with pytest.raises(ValueError, match=match):
        validate("matmul", [bad, np.ones((32, 16), dtype=np.float32)], SHAPE, 7)


@pytest.mark.parametrize("batch", [0, -1, 2.5, True])
def test_reject_bad_dynamic_batch(batch):
    with pytest.raises(ValueError, match="positive integer"):
        validate("row_sum", [], SHAPE, batch)


def test_arity_static_batch_and_unknown_entry():
    with pytest.raises(ValueError, match="operands"):
        validate("fragment", [], SHAPE, 1)
    with pytest.raises(ValueError, match="static batch"):
        validate("row_sum", [], dict(SHAPE, m=7), 8)
    with pytest.raises(ValueError, match="unknown entry"):
        validate("missing", [], SHAPE, 1)


@pytest.mark.parametrize("actual", [
    np.array([np.nan, np.inf, np.inf], np.float32),
    np.array([0, np.inf, -np.inf], np.float32),
    np.array([np.nan, 0, -np.inf], np.float32),
])
def test_special_value_gate_rejects_wrong_masks(actual):
    with pytest.raises(AssertionError):
        compare(actual, np.array([np.nan, np.inf, -np.inf]))


def test_numeric_gate_detects_plausible_wrong_output():
    with pytest.raises(AssertionError, match="numeric error"):
        compare(np.array([1.01], np.float32), np.array([1.0]))


def test_cancellation_has_independent_forward_error_budget():
    # An exact mathematical sum of 1 can become 0 in a valid f32 accumulation.
    source = np.array([[2**24, 1, -(2**24)]], dtype=np.float32)
    expected = reference("row_sum", [source])
    np.testing.assert_array_equal(expected, [1])
    bound = roundoff_bound("row_sum", [source])
    result = compare(np.array([0], np.float32), expected, forward_bound=bound)
    assert result["max_error_over_absrel"] > 1
    assert result["max_error_over_bound"] < 1
    with pytest.raises(AssertionError):
        compare(np.array([100], np.float32), expected, forward_bound=bound)


def test_reference_fragment_exact_small_example():
    x = np.array([[1, -2]], np.float32)
    w = np.array([[3, -4], [5, 6]], np.float32)
    bias = np.array([8, 20], np.float32)
    np.testing.assert_array_equal(reference("fragment", [x, w, bias]), [5])
