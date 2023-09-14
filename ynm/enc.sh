#!/bin/bash

rm *.qst
rm *.bin
openssl enc -nosalt -des-cbc -in questions1.json -out questions1.bin -K $1 -iv $2 -provider legacy
base64 -i questions1.bin -o questions1.qst
