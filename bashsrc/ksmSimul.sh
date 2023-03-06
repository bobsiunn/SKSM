#!/bin/bash

SLEEP=5
SCAN=100
ZERO=$1

SHARED=0
SHARING=0
UNSHARED=0
Z=0

echo $SLEEP > /sys/kernel/mm/ksm/sleep_millisecs
echo $SCAN > /sys/kernel/mm/ksm/pages_to_scan
echo $ZERO > /sys/kernel/mm/ksm/use_zero_pages

# echo "per scan: $SCAN per sleep: $SLEEP zero use: $ZERO"

echo 1 > /sys/kernel/mm/ksm/run
echo "per scan: $SCAN per sleep: $SLEEP zero use: $ZERO"

for i in {1..5}:
do
    SHARED=$(cat /sys/kernel/mm/ksm/pages_shared)
    SHARING=$(cat /sys/kernel/mm/ksm/pages_sharing)
    UNSHARED=$(cat /sys/kernel/mm/ksm/pages_unshared)
    FULL=$(cat /sys/kernel/mm/ksm/full_scans)
    RUN=$(cat /sys/kernel/mm/ksm/run)


    echo "Running: $RUN shared: $SHARED sharing: $SHARING unshared: $UNSHARED full: $FULL"

    sleep 60

done

echo 0 > /sys/kernel/mm/ksm/run
