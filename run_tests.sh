#!/bin/bash

echo "Running tests..."
# Add your test commands here

OUTPUT=$(curl -f http://127.0.0.1:3000/)
if [[ "$OUTPUT" != "Hello World" ]]; then
  echo "Test failed: Expected 'Hello World' but got '$OUTPUT'"
  exit 1
else
  echo "Test passed: Received 'Hello World'"
fi
