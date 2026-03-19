#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 3 ]]; then
  echo "Usage: $0 <owner/repo> <app-id> <private-key-file>"
  exit 1
fi

REPO="$1"
APP_ID="$2"
KEY_FILE="$3"

if [[ ! -f "$KEY_FILE" ]]; then
  echo "Private key file not found: $KEY_FILE"
  exit 1
fi

gh secret set APP_ID --repo "$REPO" --body "$APP_ID"
gh secret set APP_PRIVATE_KEY --repo "$REPO" < "$KEY_FILE"

echo "Configured APP_ID and APP_PRIVATE_KEY for $REPO"
