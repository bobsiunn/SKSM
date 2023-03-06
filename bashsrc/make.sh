#!/bin/bash


SRC="/home/bob/SKSM/src/hook.c"
EXE="/home/bob/SKSM/exe/hook.so"


rm -f $EXE
gcc -Wall -shared -fPIC -o $EXE $SRC -ldl

