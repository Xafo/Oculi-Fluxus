# Agent Contracts

This repository uses a Code Factory model with autonomous agents and minimal user input.

## Global Rules

- Every change must map to an issue ID.
- Work must follow: PM -> Dev -> Sr Gate -> QA Gate -> Done/Rework.
- `Critical` and `High` defects block completion.
- PRs must include risk notes and test evidence.

## Agent Outputs

### PM Agent

- Problem statement
- User stories
- Acceptance criteria in Given/When/Then format
- Scope in/out
- Risks

### Developer Agent

- Technical plan
- Implementation commit(s)
- PR with test notes and risk assessment

### Sr Developer Agent

- Gate result: pass/fail
- Findings by severity
- Required changes when failing

### QA Agent

- Test report: pass/fail/blocked
- Steps executed and evidence
- Defects with severity and reproduction details

## Severity Model

- Critical: release blocker, immediate rework
- High: not mergeable
- Medium: merge decision by PM based on risk
- Low: backlog candidate
