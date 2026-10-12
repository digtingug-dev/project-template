#!/usr/bin/env bash

set -euo pipefail

echo "Checking test coverage..."

npm run coverage

echo "Coverage checks passed."