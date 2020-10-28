#!/bin/bash
set -ex

echo "inside test.sh"

echo "$PATH"

pwd

which analyze

analyze

analyze \
  --step foo \
  --type exitcode \
  --args '{"category":"infra", "subcategory": "foobar"}' \
  true

echo "should get here"

analyze \
  --step foo \
  --type exitcode \
  --args '{"category":"infra", "subcategory": "foobar"}' \
  false

echo "should never get here"