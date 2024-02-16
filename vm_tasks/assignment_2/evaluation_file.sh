#!/bin/sh

if ! [ -f ~/cs1102/assignment_2/script.sh ]; then
	echo "File $HOME/cs1102/assignment_2/script.sh not found" >&2
	exit 1
fi

if ! [ -x ~/cs1102/assignment_2/script.sh ]; then
	echo "File $HOME/cs1102/assignment_2/script.sh is not executable" >&2
	exit 1
fi

~/cs1102/assignment_2/script.sh

if test -f "/tmp/local_uploads/$(whoami).txt"; then
	exit 0
else
	echo "File not uploaded!" >&2
	echo "Check the URL that you have sent the file!" >&2
	exit 1
fi
