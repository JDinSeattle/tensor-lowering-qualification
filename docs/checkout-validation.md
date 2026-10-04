# Checkout validation

This local validation is separate from the user-confirmed cloud results in the README.

26 tests passed; python -O verifier accepted retained evidence (478 files, 192 numerical cases, 24 paired workloads, 48 cold starts). Rehashed failed summaries were rejected with and without -O.

## Commands

```text
/home/postedism/Desktop/Find work/github-alignment/repos/tensor-lowering-qualification/.venv/bin/python -m pytest -q -ra
```

Retained evidence check: `python3 -O tools/verify_evidence.py evidence/local-20260906` passed.

No new physical-GPU performance, cloud rerun, or production availability claim is made. Local build and runtime artifacts remain outside Git; the committed source and profiles reproduce the checks with the pinned dependencies. Historical source changes already present in the user’s working tree are preserved in this update.
