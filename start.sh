#!/bin/bash
set -e

key=$1
slice=$2

ssh -i "$key" ubuntu@$slice 'nohup ./one-click-cd-demo/server-scripts/start-local.sh </dev/null &>log &'
