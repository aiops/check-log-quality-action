# check-log-quality-action

 <a href="https://logsight.ai/"><img src="https://logsight.ai/assets/images/logsight_logo.png" width="150"/></a>

Checks the semantic and synthactic quality of log messages in your code!

Based on [check-log-quality](https://github.com/aiops/check-log-quality) tool.


## Usage

By using a pipeline of two actions we are able to identify badly written log messages.

Here is how the configuration looks like:

```yml
- uses: actions/checkout@v2
- uses: aiops/check-log-quality-action@main
```

How it works:

1. The first [`actions/checkout@v2`](https://github.com/actions/checkout) action checkouts our code from the repo
2. Our own `aiops/check-log-quality-action` finds abdly written log messages and creates a report
4. Done!

Here's how our [workflow looks like](https://github.com/aiops/check-log-quality-action/blob/main/.github/workflows/check-log-quality.yml).


## Options and outputs

You can pass any options that are supported by `check-log-quality` tool,
to do so you can use `options` key:

```yml
- uses: aiops/check-log-quality-action@main
  with:
    options: '-v src/'
```

You can also use the output produced by this action by default.
Read more about [outputs](https://help.github.com/en/actions/building-actions/metadata-syntax-for-github-actions#outputs).

## Acknowledgements

We took a lot of inspiration from [`misspell-fixer-action`](https://github.com/sobolevn/misspell-fixer-action). Thank you!


