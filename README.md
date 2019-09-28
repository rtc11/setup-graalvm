<p align="left">
  <a href="https://github.com/rtc11/setup-graalvm"><img alt="GitHub Actions status" src="https://github.com/rtc11/setup-graalvm/workflows/CI/badge.svg"></a>
</p>

# Github Action for GraalVM
Github Action for setting up GraalVM.

## Usage

Provide an URL for a downloadable compressed file of GraalVM.

Exports GRAALVM_HOME and JAVA_HOME.

### Prequesite
Requires setup-java as a step before setup-graalvm.

### GitHub Actions
```
on: push
jobs:
  setup-graalvm:
    runs-on: ubuntu-latest
    steps:
    - name: setup-graalvm
      uses: rtc11/setup-graalvm@master
      with:
        args: https://github.com/oracle/graal/releases/download/vm-19.2.0.1/graalvm-ce-linux-amd64-19.2.0.1.tar.gz
```

## Author
[Robin Tordly](https://github.com/rtc11) _github@rtc11.com_

## License
[MIT](https://rtc11.mit-license.org)
