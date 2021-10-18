#!/usr/bin/env bash
#exec 2>> ${HOME}/Temporary/log
#set -xv
#readlink -f $(which sh) # on Ubuntu may output 'readlink -f $(which sh)'.

function arrlen #arrlen()
{
	A=( ${@} ) #A=( ${1} )
	i=0 #local i=0

#	printf '%s\n' ${#A[@]}
	while [ ! -z ${A[${i}]} ]
	do
		i=$(( ${i} + 1 ))
	done
	printf '%s\n' ${i} #return ${i}
}

#printf '\n%s\n\t' 'A='; A=$(ps -ef | grep '[0-9][0-9]:[0-9][0-9]:[0-9][0-9] /usr/bin/vmtoolsd -n vmusr')
#printf '\n%s\n\t' 'echo ${A}'; echo ${A} # "kvpb 2377 1921 0 13:18 ? 00:00:08 /usr/bin/vmtoolsd -n vmusr --blockFd 3", because ${A[0]} is "kvpb 2377 1921 0 13:18 ? 00:00:08 /usr/bin/vmtoolsd -n vmusr --blockFd 3".
#printf '\n%s\n\t' 'A=( ${A} )'; A=( ${A} )
#printf '\n%s\n\t' 'echo ${A}'; echo ${A} # "kvpb", because ${A[0]} is "kvpb".
#printf '\n%s\n\t' 'echo ${A[@]}'; echo ${A[@]} # "kvpb 2377 1921 0 13:18 ? 00:00:08 /usr/bin/vmtoolsd -n vmusr --blockFd 3", because 
#printf '\n%s\n\t' 'echo ${!A}'; echo ${!A} # "", because 
#printf '\n%s\n\t' 'echo ${!A[@]}'; echo ${!A[@]} # "0 1 2 3 4 5 6 7 8 9 10 11", because 
#printf '\n%s\n\t' 'echo ${#A}'; echo ${#A} # 4, because ${#A[0]} is "kvpb", and "kvpb" is 'k' 'v' 'p' 'b'.
########################################################################################## 1   2   3   4
#printf '\n%s\n\t' 'echo ${#A[@]}'; echo ${#A[@]} # 12, because ${A[@]} is "kvpb 2377 1921 0 13:18 ? 00:00:08 /usr/bin/vmtoolsd -n vmusr --blockFd 3"
########################################################################## 1    2    3    4 5     6 7        8                 9  10    11        12
#printf '\n%s\n\t' 'echo ${!A[ ${#A[@]} - 1 ]}'; echo ${!A[ ${#A[@]} - 1 ]} # '', because $(( ${#A[@]} - 1 )) = 12 - 1 = 11, and ${!A[@]} is "0 1 2 3 4 5 6 7 8 9 10 11", yet ${!A[11]} is '', since there is not in A ("0 1 2 3 4 5 6 7 8 9 10 11", not '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', "10" and "11") any 11th element. We must re-'tokenize' ${!A[@]}, if we want to make it work. 
#printf '\n%s\n\t' 'B=( ${!A[@]} ) && echo ${B[$(( ${#A[@]} - 1 ))]}'; B=( ${!A[@]} ) && echo ${B[$(( ${#A[@]} - 1 ))]} # because 
#printf '\n%s\n\t' 'arrlen ${A}'; arrlen ${A[@]} #arrlen ${A}

# arrlen.sh
# ARRLEN
#
# Karl V. P. Bertin `kvpb`
# +1 (DDD) DDD-DDDD
# local-part@domain
# https://www.linkedin.com/in/karlbertin

