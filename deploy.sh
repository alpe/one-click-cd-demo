#!/bin/bash
set -e

key=$1
slice=$2

tarfile="one-click-cd-demo.tgz"

ssh -i "$key" ubuntu@$slice 'rm -rf ~/one-click-cd-demo'
ssh -i "$key" ubuntu@$slice 'mkdir ~/one-click-cd-demo'
scp -i "$key" dist/$tarfile ubuntu@$slice:~/one-click-cd-demo
ssh -i "$key" ubuntu@$slice "cd ~/one-click-cd-demo && tar xfz $tarfile"