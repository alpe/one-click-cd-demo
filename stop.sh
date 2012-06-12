#!/bin/bash
set -e

key=$1
slice=$2

ssh -i "$key" ubuntu@$slice 'killall python'
