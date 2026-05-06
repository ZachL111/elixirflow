# elixirflow

`elixirflow` is a compact Elixir repository for data pipelines, centered on this goal: Model bounded backpressure and retryable pipeline stages.

## Problem It Tries To Make Smaller

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Elixirflow Review Notes

Start with `stage pressure` and `retry gap`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for stage pressure and backpressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/elixirflow-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `stage pressure` and `retry gap`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The added Elixir path is deliberately direct, with fixtures doing most of the explaining.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `baseline` is the high score at 226; `edge` is the low score at 126.

## Known Limits

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
