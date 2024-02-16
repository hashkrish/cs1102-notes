#!/usr/bin/bash

RANDOM_NUMBER=$RANDOM
RANDOM_FILE=/tmp/$RANDOM_NUMBER

echo hola >$RANDOM_FILE

if ! [ -f ~/cs1102/assignment_10/script.sh ]; then
	echo "File $HOME/cs1102/assignment_10/script.sh not found" >&2
	exit 1
fi

if ! [ -x ~/cs1102/assignment_10/script.sh ]; then
	echo "File $HOME/cs1102/assignment_10/script.sh is not executable" >&2
	exit 1
fi

if [[ "$(./script.sh $RANDOM_FILE)" == "916f4c31aaa35d6b867dae9a7f54270d" ]]; then
	rm $RANDOM_FILE
	exit 0
else
	rm $RANDOM_FILE
	exit 1
fi
