#!/usr/bin/bash

# check if input file is present
if [ -z "$WERCKER_EXPANDENV_INPUT_FILE" ]; then
  fail "Please provide an input file"
fi

EXPANDENV_OUTPUT=$("$WERCKER_STEP_ROOT"/expandenv "$WERCKER_EXPANDENV_INPUT_FILE")
if [ -z "$WERCKER_EXPANDENV_OUTPUT_FILE" ]; then
  echo "$EXPANDENV_OUTPUT" > "$WERCKER_EXPANDENV_OUTPUT_FILE"
else
  export EXPANDENV_OUTPUT
fi
