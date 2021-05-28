#!/bin/bash

rm *.qst
rm *.gpg
gpg --cipher-algo AES256 --symmetric questions1.json 
base64 -i questions1.json.gpg -o questions1.qst
