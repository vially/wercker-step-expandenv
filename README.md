# wercker-step-expandenv
Wercker step for replacing environment variables in input file

# Options

- `input_file` The input file
- `output_file` (optional) The output file. If not specified the output is stored in the `EXPANDENV_OUTPUT` environment variable.
- `output_env_var` (optional) When the output file is not specified, the output is stored in this environment variable. Default is `EXPANDENV_OUTPUT`.

# Example

```yaml
build:
  steps:
    - script:
        name: demo
        code: |
          echo 'Hello $GREETER_NAME' > hello.txt
          export GREETER_NAME=John
  steps:
    - appnific/expandenv:
        input_file: hello.txt
        output_file: out.txt  # Result: Hello John
```

# License

The MIT License (MIT)
