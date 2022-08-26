#!/bin/bash

# bash .commands.sh mini-switch-8f80ba 192.168.9.55

esphome -s name $1 run $1.yaml --device $2 --no-logs
sleep 15

esphome -s name $1 run $1.yaml --no-logs
esphome clean $1.yaml