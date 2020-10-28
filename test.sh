#!/bin/bash
set -ex 

echo "inside test.sh"

analyze \
  --step foo \
  --type exitcode \
  --args '{"category":"infra", "subcategory": "foobar"}'
  false

echo "should never get here"