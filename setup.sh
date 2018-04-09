#!/usr/bin/env bash

mkdir -p ssl
openssl req -new -newkey ec -pkeyopt ec_paramgen_curve:P-384 -days 3650 -nodes -x509 -subj "/C=NL/ST=Amsterdam/L=Amsterdam/O=Dis/CN=example.org" -keyout ./ssl/default-ecc.key -out ./ssl/default-ecc.crt
docker network create reverseproxy
