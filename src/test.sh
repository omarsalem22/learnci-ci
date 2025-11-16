#!/usr/bin/env bash
set -euo pipefail   # fail fast, treat unset vars as error

EXPECTED="Hello ,  test"

# Run the module with argument 'test'
OUTPUT=$(node -e "console.log(require('./src/app')('test'))")

if [ "$OUTPUT" = "$EXPECTED" ]; then
  echo "test passed"
  exit 0
else
  echo "Failed: Expected '$EXPECTED' but got '$OUTPUT'"
  exit 1
fi