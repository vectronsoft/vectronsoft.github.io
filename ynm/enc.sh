#!/bin/bash

rm *.qst
rm *.gpg
gpg --cipher-algo AES256 --symmetric questions1.json 
openssl base64 -in questions1.json.gpg -out questions1.qst
