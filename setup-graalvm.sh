#!/bin/sh

set -e

sh -c "echo 'Downloading $1'"
sh -c "curl -sL $1 --output graalvm.tar.gz"

sh -c "echo 'Extracting graalvm.tar.gz to graalvm/'"
sh -c "mkdir graalvm"
sh -c "tar -xf graalvm.tar.gz -C graalvm --strip-components=1"

sh -c "echo 'Exporting environment variables.'"
sh -c "export GRAALVM_HOME=graalvm"
sh -c "export JAVA_HOME=$GRAALVM_HOME"
sh -c "export PATH=$PATH:$GRAALVM_HOME/bin"
sh -c "echo 'GRAALVM_HOME=$GRAALVM_HOME'"
sh -c "echo 'JAVA_HOME=$JAVA_HOME'"
sh -c "echo 'PATH=$PATH'"
