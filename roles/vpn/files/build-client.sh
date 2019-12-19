#!/bin/bash

# Requires username as arg
# You will be prompted for the CA secret passphrase

cd /etc/openvpn
/usr/share/easy-rsa/3/easyrsa build-client-full $1 nopass
# enter password
mkdir /tmp/$1.tblk
cp /etc/openvpn/pki/ca.crt /tmp/$1.tblk/ca.crt
cp /etc/openvpn/pki/issued/$1.crt /tmp/$1.tblk/client.crt
cp /etc/openvpn/pki/private/$1.key /tmp/$1.tblk/client.key
cp /etc/openvpn/client-config/client.conf /tmp/$1.tblk/client.conf
cd /tmp
zip -r $1.zip $1.tblk
