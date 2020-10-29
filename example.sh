#!/bin/bash
set -euxo pipefail

echo "one"

# when the wrapped command passes, continue
analyze \
  --step foo \
  --type exitcode \
  --args '{"category":"infra", "subcategory": "foobar"}' \
  true

echo "two"

# when the wrapped command fails, log the failure in artifacts/analysis/failure
# this failure is uploaded to buildkite meta-data as part of the analyzer plugin
analyze \
  --step foo \
  --type exitcode \
  --args '{"category":"infra", "subcategory": "foobar"}' \
  false

echo "three"