#!/bin/bash
set -e

key=$1
slice=$2

ssh -i "$key" ubuntu@$slice 'sudo service one-click-cd-demo stop'
