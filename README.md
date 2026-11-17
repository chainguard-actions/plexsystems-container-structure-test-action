# container-structure-test-action

Setup [container-structure-test](https://github.com/GoogleContainerTools/container-structure-test) for use in your [GitHub Action](https://github.com/features/actions) workflows.

## Required inputs

- `image`: the image (including :tag) to run container structure test against (e.g. `my-image:latest`)
- `config`: the path (relative to the root of the repository) to the test config (e.g. `tests.yaml`)

## Example

```yaml
name: "Test Dockerfile structure"
on: pull_request

jobs:
  dockerfile-test:
    runs-on: ubuntu-latest
    steps:
    - name: checkout source
      uses: actions/checkout@main

    - name: run structure tests
      uses: plexsystems/container-structure-test-action@v0.1.0
      with:
        image: my-image:latest
        config: tests.yaml
```

## Privacy

This Action contacts Chainguard's licensing server to verify authorization. Connection metadata (IP address, GitHub repository identifier, timestamp, and any metadata encoded in the auth token) is transmitted to Chainguard, Inc. even if authorization is denied in accordance with our [Privacy Notice](https://www.chainguard.dev/legal/privacy-notice)
