#!/bin/bash

esphome compile $1.yaml

rm -rf  ~/Volumes/dev/firmwares/$1 2> /dev/null
mkdir -p  ~/Volumes/dev/firmwares/$1

cp ./builds/$1/.pioenvs/**/firmware.bin  ~/Volumes/dev/firmwares/$1/$1.bin
cp .esphome/$1.yaml.json  ~/Volumes/dev/firmwares/$1/

if [[ $2 ]]
then
    esphome upload $1.yaml --device $2
else
    esphome upload $1.yaml
fi

esphome clean $1.yaml
esphome logs $1.yaml
