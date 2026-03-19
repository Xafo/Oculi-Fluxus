# Oculi Fluxus

Autonomous Code Factory baseline repository.

## Objective

Run a low-input, agent-driven delivery flow with these roles:

- PM Agent: converts business needs into testable stories.
- Developer Agent: implements and opens PRs.
- Sr Developer Agent: performs technical gate review.
- QA Agent: validates acceptance criteria and regression behavior.

## Flow

1. Issue created from template.
2. PM triage workflow structures and labels the issue.
3. Developer workflow creates a branch and opens a draft PR.
4. CI + Sr gate + QA gate run on PR.
5. If QA fails, rework loop sends back to Dev.
6. If all gates pass, PR is ready to merge.

See `docs/operating-model.md` and `AGENTS.md` for details.
