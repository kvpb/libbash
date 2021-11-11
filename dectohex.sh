#!/usr/bin/env bash
#exec 2>> ${HOME}/Temporary/log
#set -xv
#readlink -f $(which sh) # on Ubuntu may output 'readlink -f $(which sh)'.

function dectohex
{
	b='0123456789ABCDEF'; # base
	n=${1}; # (input) decimal integers
	r=; # remainder
	Oxd=; # hexadecimal digit
	Oxn=; # (output) hexadecimal integer literal

	Oxn=;
	if [ ${n} -lt 0 ];
	then
		n=$(( ${n} + 2**32 ));
	fi; # Because it sort of loops as I told Ian and Victor yesterday in n-bit CPU registers.
	while [ ${n} -gt 0 ];
	do
		r=$(( ${n} % 16 ));
		Oxd=${b:${r}:1};
		Oxn=${Oxd}${Oxn};
		n=$(( ${n} / 16 ));
	done;
	Oxn=${Oxn/#/0x};
	printf ${Oxn}'\n';
}

# dectohex.sh
# DecToHex
#
# Karl V. P. Bertin `kvpb`
# +1 (DDD) DDD-DDDD
# local-part@domain
# https://www.linkedin.com/in/karlbertin
