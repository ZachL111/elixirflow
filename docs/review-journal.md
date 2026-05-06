# Review Journal

The review surface for `elixirflow` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its data pipelines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `stage pressure`, score 226, lane `ship`
- `stress`: `backpressure`, score 173, lane `ship`
- `edge`: `retry gap`, score 126, lane `watch`
- `recovery`: `output drift`, score 182, lane `ship`
- `stale`: `stage pressure`, score 202, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
