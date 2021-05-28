#!/bin/bash

rm *.qst
rm *.bin
openssl enc -nosalt -aes-256-cbc-hmac-sha1  -in questions1.json -out questions1.bin -K $1 -iv 0
base64 -i questions1.bin -o questions1.qst
