#!/bin/bash

RUN="run_exp"
CONFIG="config1"
for PARAM1 in 2 4 6
do
    for PARAM2 in 10 20
    do
        echo "docker run -v $(pwd)/save:/save runner" \
        "cProfile -o /save/$RUN-$CONFIG-$PARAM1-$PARAM2.pstats" \
        "code/$RUN.py --config ./configs/$CONFIG.yaml --param1 $PARAM1 --param2 $PARAM2"
    done
done | parallel -j 4