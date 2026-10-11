#!/usr/bin/env bash

set -euo pipefail

echo "Running ESLint..."

npm run lint

echo "Linting passed."