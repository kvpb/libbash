#!/usr/bin/env bash

function fact
{
	#local n=${1};
	#
	if (( ${1} <= 1 ));
	then
		printf '%s\n' 1; #return 1;
	else
		printf '%s\n' $(( ${1} * $(fact $(( ${1} - 1 ))) )); #return $(( ${1} * $(fact $(( ${1} - 1 ))) ));
	fi;
} # recursive factorial

#fact -1
#fact 0
#fact 1
#fact 2
#fact 3
#fact 4
#fact 5
#fact 6
#fact 7
#fact 8
#fact 9
#fact 10
#unset -f fact
#chmod -x ./fact.sh
# 	debug code

# fact.sh
# Factorial
#
# Karl V. P. Bertin `kvpb`
# +33 A BB BB BB BB
# local-part@domain
# https://www.linkedin.com/in/karlbertin

