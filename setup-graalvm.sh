#!/bin/sh

set -e
echo "Downloading $1"
sh -c "curl -sL $1 --output graalvm.tar.gz"

echo "Extracting graalvm.tar.gz to graalvm/"
sh -c "mkdir graalvm"
sh -c "tar -xf graalvm.tar.gz -C graalvm --strip-components=1"

echo "Exporting environment variables."
sh -c "export GRAALVM_HOME=graalvm"
sh -c "export JAVA_HOME=$GRAALVM_HOME"
sh -c "export PATH=$PATH:$GRAALVM_HOME/bin"

echo "GRAALVM_HOME=$GRAALVM_HOME"
echo "JAVA_HOME=$JAVA_HOME"
echo "PATH=$PATH"
