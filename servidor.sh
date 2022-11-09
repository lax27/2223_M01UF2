#!/bin/bash
PORT="2223"

echo "servidor Transfer Unit Recursive International Protocol: TURIP"

echo "(0) LISTEN: handshake "
MSG=`nc -l $PORT`
HANDSHAKE=`echo $MSG | cut -d " " -f 1`
IP_CLIENT=`echo $MSG | cut -d " " -f 2`

if [ "$HANDSHAKE" != "HOLI_TURIP" ]
then
	echo "ERROR 1: handshake incorecto"
	
	echo "KO_TURIP" | nc $IP_CLIENT $PORT

	exit 1	
fi

echo "OK_TURIP" | nc $IP_CLIENT $PORT

echo "(4) LISENT"
MSG=`nc -l $PORT`
PREFIX=`$MSG | cut -d " " -f 1`
FILE=`$MSG | cut -d " " -f 2`

if [ "$PREFIX" != "FILE_NAME" ]
then

echo "ERROR 2: prefix not found"
echo "KO_FILE_NAME" | nc $IP_CLIENT $PORT
exit 2

fi

echo "OK_FILE_NAME" | nc $IP_CLIENT $PORT


exit 0









