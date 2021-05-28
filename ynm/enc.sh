#!/bin/bash

rm *.qst
rm *.gpg
openssl aes-256-cbc -in questions1.json -a -out questions1.bin 
base64 -i questions1.bin -o questions1.qst
