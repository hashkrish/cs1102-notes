#!/bin/bash

if ! [ -f ~/cs1102/assignment_9/script.sh ]; then
    echo "File $HOME/cs1102/assignment_9/script.sh not found" >&2
    exit 1
fi

if ! [ -x ~/cs1102/assignment_9/script.sh ]; then
    echo "File $HOME/cs1102/assignment_9/script.sh is not executable" >&2
    exit 1
fi

classes=("setosa" "versicolor" "virginica")
features=("sepal_length" "sepal_width" "petal_length" "petal_width")

in="/opt/cs1102/assignment_9/info.txt"

ni=(1 3 5)
fi=(1 2 3 4)

nc="${#classes[@]}"
nf="${#features[@]}"

for i in {1..5}; do
    c=`shuf -i 0-$(( $nc-1 )) -n 1`
    f=`shuf -i 0-$(( $nf-1 )) -n 1`

    class="${classes[c]}"
    feature="${features[f]}"

    j="${ni[c]}"
    l="${fi[f]}"

    x=$( sed -ne "$j"p "${in}" | sed "s/[ ]\+/ /g" | cut -d " " -f "$l" )
    js="$(./script.sh "$class" "$feature")"

    if [ -z "$js" ]; then
        exit 1;
    fi

    ca="Iris-${class}"
    fa="$(echo "${feature}" | sed "s/\(.*\)_\(.*\)/\u\1 \2/")"
    ce="$(echo "${js}" | jq -r ".class")"
    fe="$(echo "${js}" | jq -r ".feature")"
    me="$(echo "${js}" | jq -r ".mean")"

    mf="$(echo "${me} == ${x}" | bc)"

    if [ "${mf}" -eq 0 ] || [ "${ca}" != "${ce}" ] || [ "${fa}" != "${fe}" ]; then
        exit 1
    fi
done
