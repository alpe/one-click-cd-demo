#!/bin/bash
set -e

export QA_SLICE=ec2-176-34-193-84.eu-west-1.compute.amazonaws.com
export PROD_SLICE=ec2-54-247-5-51.eu-west-1.compute.amazonaws.com
export DEPLOY_KEY=./personal.pem

export GO_PIPELINE_COUNTER=12345678
export SSH_OPTS=-oStrictHostKeyChecking=no


./go-01-build.sh
./go-02-deploy-to-qa.sh
./go-03-smoke-tests-qa.sh
./go-04-deploy-to-prod.sh
