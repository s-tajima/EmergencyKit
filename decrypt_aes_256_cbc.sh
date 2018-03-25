#!/bin/bash

/bin/echo -n "AESKEY:"
read -s AESKEY
/bin/echo

/bin/echo -n "CipherText: "
read CIPHERTEXT

export AESKEY
/bin/echo -n "PlainText: "
echo $CIPHERTEXT | openssl aes-256-cbc -d -base64 -A -pass env:AESKEY
/bin/echo

