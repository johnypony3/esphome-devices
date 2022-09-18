#!/bin/bash

DEVICE=$(basename ${1%.*})
FULL_PATH=$1
IP=$2
echo "compiling:$DEVICE from $FULL_PATH"

if [[ $IP ]]
then
    echo "using ip:$IP"
fi

esphome compile $FULL_PATH

rm -rf  ~/Volumes/dev/firmwares/$DEVICE 2> /dev/null
mkdir -p  ~/Volumes/dev/firmwares/$DEVICE

cp ../builds/$DEVICE/.pioenvs/**/firmware.bin  ~/Volumes/dev/firmwares/$DEVICE/$DEVICE.bin
cp ..esphome/$FULL_PATH.json  ~/Volumes/dev/firmwares/$DEVICE/

if [[ $IP ]]
then
    esphome upload $FULL_PATH --device $IP
else
    esphome upload $FULL_PATH
fi

esphome clean $FULL_PATH
esphome logs $FULL_PATH
