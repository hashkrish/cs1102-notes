#!/bin/sh

if ! [ -d ~/cs1102/assignment_8/fibonacci ]; then
	echo "Repository not cloned" 1>&2
	exit 1
fi

cd ~/cs1102/assignment_8/fibonacci || exit 1

CURRENT_BRANCH="$(git status | grep "On branch" | cut -d" " -f3-)"
if ! git checkout "$(whoami)" >/dev/null 2>&1; then
	echo "Branch $(whoami) not found" >&2
	exit 1
fi

if ! git log | grep -q "update example"; then
	echo "Commit message \"update example\" not found in branch $(whoami)" >&2
	exit 1
fi

git checkout master >/dev/null 2>&1

if ! git log | grep -q "update example"; then
	echo "Branch $(whoami) is not merged to the branch master" >&2
	exit 1
fi

if grep -q "^# TODO" ~/cs1102/assignment_8/fibonacci/fib.sh; then
	echo "Cherry picked commit change not found in the branch master" 1>&2
	exit 1
fi

if ! [ "$(git cherry 693dca7f5dae2b72a960018ba3df5b8819963b37 | wc -l)" -gt 1 ]; then
	echo "Invalid commit: cherry picked commit"
	exit 1
fi
git checkout "$CURRENT_BRANCH" >/dev/null 2>&1
