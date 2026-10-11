#!/usr/bin/env bash

set -euo pipefail

echo "Running automated tests..."

npm run test

echo "All tests passed."