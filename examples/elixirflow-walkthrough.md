# Elixirflow Walkthrough

This note is the quickest way to read the extra review model in `elixirflow`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | stage pressure | 226 | ship |
| stress | backpressure | 173 | ship |
| edge | retry gap | 126 | watch |
| recovery | output drift | 182 | ship |
| stale | stage pressure | 202 | ship |

Start with `baseline` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `stage pressure` against `retry gap`, not the raw score alone.
