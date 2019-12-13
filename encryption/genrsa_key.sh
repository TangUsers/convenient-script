#!/bin/bash
# 生成 2048位 rsa密钥并且转成pkcs8 
# Generate the 2048-bit rsa key and convert it to pkcs8
openssl genrsa -out rsa_private_key.pem 2048
openssl pkcs8 -topk8 -inform PEM -in ./rsa_private_key.pem -outform PEM -nocrypt -out ras_private_key_pcks8.pem
openssl rsa -in rsa_private_key.pem -pubout -out rsa_public_key.pem