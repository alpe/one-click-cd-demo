#!/bin/bash
set -e

key=$1
slice=$2

ssh $SSH_OPTS -i "$key" ubuntu@$slice 'sudo service one-click-cd-demo stop'
