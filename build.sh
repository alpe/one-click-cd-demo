#!/bin/bash
set -e

BUILD_NUMBER_ARG=$1
echo "BUILD: build_number passed in $BUILD_NUMBER_ARG"

echo "BUILD: cleaning"
rm -rf dist

echo "BUILD: running tests"
node_modules/jasmine-node/bin/jasmine-node spec

echo "BUILD: packaging"
mkdir dist
cp -r server-scripts static dist/
cd dist

build_number="built on `hostname`"
[ -z $BUILD_NUMBER_ARG ] || build_number="$BUILD_NUMBER_ARG"
git_version=`git log | head -1 | awk '{print $2}'`
build_info="$build_number - git:$git_version - `date +"%m-%d-%Y @ %T"`"
echo build info = $build_info

sed -i -e "s/\${BUILD_INFO}/$build_info/g" static/*html

tar cfz $(echo "one-click-cd-demo_$build_number.tgz" | sed 's/ /-/g' | sed 's/://g') *

echo "BUILD: done"
exit 0
