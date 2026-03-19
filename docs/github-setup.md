# GitHub Setup Runbook

## 1) Repository Secrets

Configure these repository secrets if you want workflows to mint app tokens directly:

- `APP_ID`
- `APP_PRIVATE_KEY`

## 2) Ruleset/Branch Protection for `main`

Require:

- Pull request before merge
- Status checks: `baseline-checks`, `sr-gate`, `qa-gate`
- Dismiss stale approvals (optional)
- Block force push and branch deletion

## 3) CODEOWNERS

Replace `@OWNER` in `.github/CODEOWNERS` with your GitHub handle.

## 4) Labels Bootstrap

Run workflow `labels-bootstrap` once from the Actions tab.

## 5) Validation

1. Create an issue from `Story Request` template.
2. Confirm `pm-triage` labels issue as `ready-for-dev`.
3. Confirm `dev-implement` opens a draft PR.
4. Confirm `ci`, `sr-gate`, and `qa-gate` execute.
5. If QA fails, confirm `rework-loop` labels PR with `qa-fail` and `rework`.
