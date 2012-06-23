#!/bin/bash

export QA_SLICE=qa.continuous-demo.com
export PROD_SLICE=continuous-demo.com
export DEPLOY_KEY=./personal.pem

export GO_PIPELINE_COUNTER=12345678
export SSH_OPTS=-oStrictHostKeyChecking=no


#./go-01-build.sh
#./go-02-deploy-to-qa.sh
#./go-03-smoke-tests-qa.sh
#./go-04-deploy-to-prod.sh
