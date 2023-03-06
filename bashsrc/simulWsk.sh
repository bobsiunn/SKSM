#!/bin/bash

# export LD_PRELOAD=/home/bob/SKSM/hook.so

wsk action invoke $1 --result
wsk action invoke $2 --result