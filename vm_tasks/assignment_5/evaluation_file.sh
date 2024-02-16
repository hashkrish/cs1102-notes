#!/bin/sh

if ! [ -f ~/cs1102/assignment_5/script.sh ]; then
	echo "File ~/cs1102/assignment_5/script.sh not found" >&2
	exit 1
fi

. "/home/$(whoami)/cs1102/assignment_5/script.sh"

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

ASSIGNMENT_DIRECTORY="/home/$(whoami)/cs1102/assignment_5"
REPOSITORY_DIRECTORY="/home/$(whoami)/cs1102/assignment_5/cs1102-$(whoami)"

if ! [ -d "$REPOSITORY_DIRECTORY" ]; then
	echo "Directory ~/cs1102/assignment_5/cs1102-$(whoami) not found!" >&2
	exit 1
fi

if ! [ -d "$REPOSITORY_DIRECTORY/.git" ]; then
	echo "~/cs1102/assignment_5/cs1102-$(whoami) is not a valid git repository!" >&2
	exit 1
fi

if ! [ -f "$REPOSITORY_DIRECTORY/README.md" ]; then
	echo "File ~/cs1102/assignment_5/cs1102-$(whoami)/README.md not found!" >&2
	exit 1
fi

if ! git ls-remote "https://github.com/$GITHUB_USERNAME/$GITHUB_REPOSITORY" | cut -f1 | sort | uniq >.commits; then
	echo "Check the repository https://github.com/$GITHUB_USERNAME/$GITHUB_REPOSITORY" >&2
	exit 1
fi

cd "$REPOSITORY_DIRECTORY" || exit 1
if ! git log | grep -q -f "$ASSIGNMENT_DIRECTORY/.commits"; then
	exit 1
fi
