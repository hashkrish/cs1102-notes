#!/usr/bin/bash

RANDOM_NUMBER=$RANDOM
RANDOM_FILE=/tmp/$RANDOM_NUMBER

echo hola > $RANDOM_FILE

if [[ "$(./script.sh $RANDOM_FILE)" == "133ee989293f92736301280c6f14c89d521200c17dcdcecca30cd20705332d44" ]]; then
        rm $RANDOM_FILE
        exit 0
else
        rm $RANDOM_FILE
        exit 1
fi
