# elixirflow

`elixirflow` explores data pipelines in Elixir. The repository keeps the core rule set compact, then surrounds it with examples that show how the decisions move.

## Elixirflow Notes

The quickest review path is the verifier first, then the fixtures, then the operations note. That order makes it easy to see whether the code, data, and explanation still agree.

## Why This Exists

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Feature Notes

- Models stage state with deterministic scoring and explicit review decisions.
- Uses fixture data to keep backpressure changes visible in code review.
- Includes extended examples for retry behavior, including `surge` and `degraded`.
- Documents bounded queues tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Implementation Notes

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Elixir project uses Mix and ExUnit with clear data maps for each scenario.

## Code Tour

- `lib`: library code
- `test`: language test directory
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Local Setup

Install Elixir and run the commands from the repository root. The project does not need credentials or a hosted service.

## Try It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Tests

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Example Scenarios

`baseline` is the first example I would inspect because it lands on the `review` path with a score of 97. The broader file also keeps `degraded` at -85 and `surge` at 193, which gives the model a useful low-to-high spread.

## Boundaries

The examples cover useful edges, not every edge. A larger version would add malformed-input tests, richer reports, and deeper domain parsers.

## Roadmap

- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Add one more data pipelines fixture that focuses on a malformed or borderline input.
