#!/bin/bash
set -e

echo "BUILD: cleaning"
rm -rf dist

echo "BUILD: running tests"
node_modules/jasmine-node/bin/jasmine-node spec

echo "BUILD: packaging"
mkdir dist
cp -r server-scripts static dist/
cd dist

build_number="host:`hostname`"
[ -z $GO_PIPELINE_COUNTER ] || build_number="go:$GO_PIPELINE_COUNTER"
git_version=`git log | head -1 | awk '{print $2}'`
build_number="$build_number - git:$git_version - `date +"%m-%d-%Y @ %T"`"
echo build number = $build_number

sed -i -e "s/\${BUILD_NUMBER}/$build_number/g" static/*html

tar cfz one-click-cd-demo.tgz *

echo "BUILD: done"
exit 0
