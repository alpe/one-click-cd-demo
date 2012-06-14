#!/bin/bash
set -e

key=$1
slice=$2

ssh $SSH_OPTS -i "$key" ubuntu@$slice './one-click-cd-demo/server-scripts/smoke-tests-local.sh'
