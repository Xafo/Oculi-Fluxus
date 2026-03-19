# Oculi Fluxus Operating Model

## Lifecycle

`Backlog -> PM Analysis -> In Development -> PR Open -> Sr Gate -> QA Gate -> Done/Rework`

## Entry Conditions

- Input arrives as a structured issue.
- PM Agent refines issue before development starts.
- Development only starts when acceptance criteria are explicit.

## Exit Conditions

- CI passes.
- Sr gate passes.
- QA gate passes.
- No unresolved high-severity defects.
- On merge to `main`, automation applies `done` labels and publishes release notes on linked issues.

## Rework Loop

When QA fails:

1. Add `qa-fail` and `rework` labels.
2. Post actionable failure summary on the PR.
3. Return ownership to Developer Agent.
4. Re-run gates after new commit.
5. On QA pass, remove `qa-fail` and `rework` labels automatically.

## Minimal Human Input Policy

- Humans provide the initial requirement.
- Agents handle implementation, review, and validation.
- Human intervention is only required for governance exceptions.
