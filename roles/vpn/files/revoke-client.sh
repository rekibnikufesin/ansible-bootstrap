#!/bin/bash

# Requires username as arg
# must restart service

cd /etc/openvpn
/usr/share/easy-rsa/3/easyrsa revoke $1
/usr/share/easy-rsa/3/easyrsa gen-crl
cp pki/crl.pem ./crl.pem #Overwrite when prompted
chmod 777 ./crl.pem
