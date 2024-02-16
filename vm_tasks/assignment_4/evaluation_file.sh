#!/bin/sh

if ! [ -f ~/cs1102/assignment_4/script.sh ]; then
	echo "File /home/$(whoami)/cs1102/assignment_4/script.sh not found" >&2
	exit 1
fi

. "/home/$(whoami)/cs1102/assignment_4/script.sh"

if [ -z "$GITHUB_USERNAME" ]; then
	echo "GITHUB_USERNAME should not empty!" >&2
	exit 1
fi

if [ -z "$GITHUB_REPOSITORY" ]; then
	echo "GITHUB_REPOSITORY should not empty!" >&2
	exit 1
fi

if ! [ "$GITHUB_REPOSITORY" = "cs1102-$(whoami)" ]; then
	echo "GITHUB_REPOSITORY is invalid!" >&2
	exit 1
fi

git ls-remote "https://github.com/$GITHUB_USERNAME/$GITHUB_REPOSITORY" || exit 1
