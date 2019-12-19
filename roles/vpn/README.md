## If you're rebuilding the server from scratch
```
sudo su -
cd /etc/openvpn
/usr/share/easy-rsa/3/easyrsa init-pki
/usr/share/easy-rsa/3/easyrsa build-ca
# enter "vpnserver" as the common name
# password is in ansible vault *and* lastpass
/usr/share/easy-rsa/3/easyrsa gen-dh
/usr/share/easy-rsa/3/easyrsa build-server-full vpnserver nopass
# enter password
/usr/share/easy-rsa/3/easyrsa gen-crl

cp pki/ca.crt /etc/openvpn/ca.crt
cp pki/dh.pem /etc/openvpn/dh.pem
cp pki/issued/vpnserver.crt /etc/openvpn/server.crt
cp pki/private/vpnserver.key /etc/openvpn/server.key
cp pki/crl.pem /etc/openvpn/crl.pem
chmod 777 /etc/openvpn/crl.pem
```

### Notes:
Misc. sample config files live here
```
/usr/share/doc/openvpn-2.4.4/sample/sample-config-files/
```
