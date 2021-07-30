#!/usr/bin/env bash

function fib
{
	#local n=${1};
	#
	if [ ${1} -lt 0 ];
	then
		printf '%s\n' $(( $(nfib ${1}) )); #printf '%s\n' -1;
		return 0; # return -1;
	fi;
	if [ 0 -le ${1} -a ${1} -le 1 ];
	then
		printf '%s\n' ${1};
	else
		printf '%s\n' $(( $(fib $(( ${1} - 1 ))) + $(fib $(( ${1} - 2 ))) )); #return $( fib $(( ${n} - 1 )) + fib $(( ${n} - 2 )) );
	fi;
} # recursive Fibonacci

function nfib
{
	#local n=${1};
	#
	printf '%s\n' $(( -1**( -( ${1} ) + 1 ) * $(fib $(( -( ${1} ) ))) ));
} # recursive negaFibonacci

#fib -20
#fib -10
#fib -9
#fib -8
#fib -7
#fib -6
#fib -5
#fib -4
#fib -3
#fib -2
#fib -1
#fib 0
#fib 1
#fib 2
#fib 3
#fib 4
#fib 5
#fib 6
#fib 7
#fib 8
#fib 9
#fib 10
#fib 20
#unset -f fib
#chmod -x ./fib.sh
# 	debug code

# fib.sh
# Fibonacci
#
# Karl V. P. Bertin `kvpb`
# +33 A BB BB BB BB
# local-part@domain
# https://www.linkedin.com/in/karlbertin

