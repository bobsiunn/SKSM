#!/bin/bash

# export LD_PRELOAD=/home/bob/SKSM/hook.so

cd /home/bob/openwhisk/bin

java -jar openwhisk-standalone.jar -c /home/bob/openwhisk/custom.conf --couchdb