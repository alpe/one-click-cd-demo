#!/bin/bash
BASEDIR=$(dirname $0)

cd $BASEDIR/../static
python -m SimpleHTTPServer
