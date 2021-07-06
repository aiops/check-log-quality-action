#!/bin/bash

# Diagnostic output:
echo "Using options: $INPUT_OPTIONS"
echo '============================='
echo

# Runs misspell-fixes:
output=$(/work/check-log-quality $INPUT_OPTIONS)
status="$?"

# Sets the output variable for GitHub Action API:
# See: https://help.github.com/en/articles/development-tools-for-github-action
echo "::set-output name=output::$output"
echo '================================='
echo

# Fail the build in case status code is not 0:
if [ "$status" -ne 0 ]; then
  echo 'Failing with output:'
  echo "$output"
  echo "Process failed with the status code: $status"
  exit "$status"
fi
