#!/bin/bash
echo "servidor Transfer Unit Recursive International Protocol: TURIP"

echo "(0) LISTEN"
MSG=`nc -l 2223`

if [ "$MSG" != "HOLI_TURIP" ]
then
	echo "ERROR 1: handshake incorecto"
	exit 1
fi







