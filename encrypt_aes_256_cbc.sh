#!/bin/bash

/bin/echo -n "AESKEY:"
read -s AESKEY
/bin/echo

/bin/echo -n "PlainText: "
read PLAINTEXT


export AESKEY
/bin/echo -n "CipherText: "
echo $PLAINTEXT | openssl aes-256-cbc -e -base64 -A -pass env:AESKEY 
/bin/echo
