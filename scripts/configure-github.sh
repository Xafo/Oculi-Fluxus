#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <owner>/<repo>"
  exit 1
fi

REPO="$1"

gh api \
  --method PUT \
  -H "Accept: application/vnd.github+json" \
  "/repos/${REPO}/branches/main/protection" \
  -f required_status_checks.strict=true \
  -f required_status_checks.contexts[]="baseline-checks" \
  -f required_status_checks.contexts[]="sr-gate" \
  -f required_status_checks.contexts[]="qa-gate" \
  -F enforce_admins=true \
  -f required_pull_request_reviews.dismiss_stale_reviews=true \
  -f required_pull_request_reviews.require_code_owner_reviews=false \
  -F restrictions= \
  -F required_linear_history=true \
  -F allow_force_pushes=false \
  -F allow_deletions=false \
  -F block_creations=false

echo "Branch protection configured for ${REPO}."
