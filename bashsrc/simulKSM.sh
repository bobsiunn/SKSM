#!/bin/bash

#param
MAIN_FUNC="lin"
NOZERO_PATH="/home/bob/SKSM/traceResult/nozero/${MAIN_FUNC}_trace.txt"
ZERO_PATH="/home/bob/SKSM/traceResult/zero/${MAIN_FUNC}_trace.txt"



#zero

# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC json" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC json"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10




# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC dd" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC dd"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10




# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC gzip" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC gzip"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10



# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC train" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC train"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10




# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC float" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC float"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10



# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC video" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC video"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10




# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC cha" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC cha"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10




# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC image" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC image"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10




# su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

# sleep 1m

# echo "$MAIN_FUNC lin" >> $ZERO_PATH
# su bob -c "./simulWsk.sh $MAIN_FUNC lin"
# ./ksmSimul.sh 1 >> $ZERO_PATH

# su bob -c "tmux send-keys -t 0 "^C" Enter"

# sleep 10
# echo 1 > /sys/kernel/mm/ksm/run
# sleep 10
# echo 0 > /sys/kernel/mm/ksm/run
# sleep 10





#nozero

su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC json" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC json"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10




su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC dd" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC dd"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10




su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC gzip" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC gzip"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10



su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC train" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC train"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10




su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC float" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC float"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10



su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC video" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC video"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10




su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC cha" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC cha"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10




su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC image" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC image"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10




su bob -c "tmux send-keys -t 0 "./runOpenwhisk.sh" Enter"

sleep 1m

echo "$MAIN_FUNC lin" >> $NOZERO_PATH
su bob -c "./simulWsk.sh $MAIN_FUNC lin"
./ksmSimul.sh 0 >> $NOZERO_PATH

su bob -c "tmux send-keys -t 0 "^C" Enter"

sleep 10
echo 1 > /sys/kernel/mm/ksm/run
sleep 10
echo 0 > /sys/kernel/mm/ksm/run
sleep 10