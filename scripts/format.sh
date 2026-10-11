#!/usr/bin/env bash

set -euo pipefail

echo "Checking code formatting..."

npm run format:check

echo "Formatting check passed."