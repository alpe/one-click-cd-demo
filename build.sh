#!/bin/bash
set -e

echo "BUILD: cleaning"
rm -rf dist

echo "BUILD: running tests"
jasmine-node spec

echo "BUILD: packaging"
mkdir dist
tar cfz dist/one-click-cd-demo.tgz server-scripts static

echo "BUILD: done"
exit 0
