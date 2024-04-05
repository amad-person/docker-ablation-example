#!/bin/bash

CONFIG="./configs/config1.yaml"
for PARAM1 in 2 4 6
do
    for PARAM2 in 10 20
    do
        echo "docker run -v $(pwd)/save:/save runner --config $CONFIG --param1 $PARAM1 --param2 $PARAM2"
    done
done | parallel -j 4