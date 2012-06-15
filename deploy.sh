#!/bin/bash
set -e

key=$1
slice=$2
tarfile=$3

echo "Deploying $3 to $2 using key $1"

(./stop.sh $key $slice || echo 'Could not stop server')

ssh $SSH_OPTS -i "$key" ubuntu@$slice 'rm -rf ~/one-click-cd-demo'
ssh $SSH_OPTS -i "$key" ubuntu@$slice 'mkdir ~/one-click-cd-demo'
scp $SSH_OPTS -i "$key" dist/$tarfile ubuntu@$slice:~/one-click-cd-demo
ssh $SSH_OPTS -i "$key" ubuntu@$slice "cd ~/one-click-cd-demo && tar xfz $tarfile"

./start.sh $key $slice
