#!/bin/bash

if ! [ -f ~/cs1102/assignment_7/script.sh ]; then
        echo "File $HOME/cs1102/assignment_7/script.sh not found" >&2
        exit 1
fi

if ! [ -x ~/cs1102/assignment_7/script.sh ]; then
        echo "File $HOME/cs1102/assignment_7/script.sh is not executable" >&2
        exit 1
fi


temp_="/tmp/.temp_$(whoami)"
city_=("chennai" "kolhapur" "amritsar" "pune" "srinagar" "surat" "cherrapunjee" "indore" "bikaner" "kalaburagi" "raipur" "bengaluru" "varanasi" "visakhapatnam")
cur_=("31.67" "32.75" "23.97" "31.09" "11.95" "28.94" "20.33" "30.09" "29.66" "33.96" "32.07" "29.94" "30.99" "31.78")
max_=("33.01" "32.75" "23.97" "31.09" "11.95" "28.94" "20.33" "30.09" "29.66" "33.96" "32.07" "30.73" "30.99" "31.78")
min_=("31.67" "32.75" "21.9" "31.09" "11.95" "28.94" "20.33" "30.09" "29.66" "33.96" "32.07" "27.95" "30.99" "31.78")

num_cities_="${#city_[@]}"
opts_=( "-C" "-W" "-S" )
nopts_="${#opts_[@]}"
cargs_=( "min" "max" "current" )
nargc_="${#cargs_[@]}"

for i in {1..10};
do
    a_=1000
    c_=`shuf -i 1-$(( num_cities_ - 1 )) -n 1`
    o_=`shuf -i 1-$(( nopts_ - 1 )) -n 1`

    if [ "${o_}" -eq 0 ]; then
        a_=`shuf -i 0-$(( nargc_ - 1 )) -n 1`
    fi
    city_="${city_[c_]}"
    city_="${city_[c_]}"
    opt_="${opts_[o_]}"
    arg_="${cargs_[a_]}"
    min_t_="${min_[c_]}"
    max_t_="${max_[c_]}"
    cur_t_="${cur_[c_]}"
    ./script.sh "${city_}" "${opt_}" "${arg_}" > "${temp_}"
    
    if [ "$o_" -eq 0 ]; then
        case "$arg_" in
            "min" )
                tmin_=`cat "${temp_}" | jq '.temp_min'`
                if [ "${tmin_}" != "${min_t_}" ]; then
                    echo "Failed" >&2
                    exit 1
                fi
                ;;

            "max" )
                tmax_=`cat "${temp_}"  | jq '.temp_max'`
                if [ "${tmax_}" != "${max_t_}" ]; then
                    echo "Failed" >&2
                    exit 1
                fi
                ;;

            "current" )
                tcur_=`cat "${temp_}" | jq '.temp'`
                tfah_=`cat "${temp_}" | jq '.F'`
                if [ "${tcur_}" != "${cur_t_}" ]; then
                    echo "Failed" >&2
                    exit 1
                fi
                moc_=`echo "${tcur_} * 1.8 + 32" | bc`
                match_=`echo "${tfah_}" | grep "${moc_}"`
                if [ -z "${match_}" ]; then
                    echo "Failed" >&2
                    exit 1
                fi
                ;;     
        esac
    fi

    if [ "${o_}" -eq 1 ]; then
        _w1=`cat "${temp_}" | jq '.speed' | grep '^[0-9]\{1\}.[0-9]\{1,2\}$'`
        _w2=`cat "${temp_}" | jq '.sqrtspeed' | grep '^[0-9]\+\.[0-9]\+$'`
 
        if [ "${_w1}" != "" ] && [ "${_w2}" != "" ]; then
            _sq1=`awk 'BEGIN  { printf("%.2f", ARGV[1] ^ 0.5) }' "${_w1}"`
            _sq2=`awk 'BEGIN  { printf("%.2f", ARGV[1])}' "${_w2}"`

            match_=`echo "${_sq1}" | grep "${_sq2}"`
            if [ -z "${match_}" ]; then
                echo "Failed" >&2
                exit 1
            fi
        else
            echo "Failed" >&2
            exit 1
        fi
    fi

    if [ "${o_}" -eq 2 ]; then
        list_=`cat "${temp_}"`
        npat_="^\"[[:alpha:]]\+[ ]\?[[:alpha:]]\+\"$"
        dpat_="^\"[0-3]\{1\}[0-9]\{1\}/[0-1]\{1\}[0-9]\{1\}/20[1-3]\{1\}[0-9]\{1\}\"$"
        tpat_="^\"[0-2][0-9]:[0-6][0-9]:[0-6][0-9]\"$"
        n_=`echo "${list_}" | jq .[0] | grep "${npat_}"`
        d_=`echo "${list_}" | jq .[1] | grep "${dpat_}"` 
        r_=`echo "${list_}" | jq .[2] | grep "${tpat_}"`
        s_=`echo "${list_}" | jq .[3] | grep "${tpat_}"`
        if [ "${n_}" == "" ] && [ "${d_}" == "" ] && [ "${r_}" == "" ] && [ "${s_}" == "" ]; then
	    echo "Failed" >&2
            exit 1
        fi
    fi
done
rm "${temp_}"
