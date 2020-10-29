#!/bin/bash
set -euxo pipefail

echo "write failure classification to artifacts/analysis/failure"

mkdir -p artifacts/analysis/failure
echo "user_failure foobar" > artifacts/analysis/failure

echo "infra/buildkite-webhook-proxy will now use this info to classify the build failure"