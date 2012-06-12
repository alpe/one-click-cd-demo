#!/bin/bash
set -e

curl -f -s  -S http://localhost:8000/index.html > /dev/null
echo Smoke tests passed
