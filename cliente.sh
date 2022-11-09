#!/bin/bash
PORT="2223"
SERVER_AD="localhost"

echo "cliente TURIP"

echo "(1) SEND_MSG: HOLI_TURIP"

echo "HOLI_TURIP 127.0.0.1" | nc $SERVER_AD $PORT

echo "(2) LISENT: comprobacion handsake"

MSG=`nc -l $PORT`

echo $MSG

if [ "$MSG" != "OK_TURIP" ]
then
	echo "ERROR 1: Handshake incorecto"
	exit 1
fi

echo "(5) SEND"
echo "echo "FILE_NAME vaca.vaca" " | nc $SERVER_AD $PORT 

echo "(6) LISENT"
MSG=`nc -l $PORT`

if [ "$MSG" != "OK_FILE_NAME" ]
then

echo "ERROR 2: Prefix FILE_NAME NOT FOUND"
exit 2
fi










exit 0









