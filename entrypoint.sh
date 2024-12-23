#/bin/sh
set -e
cd /etc/openvpn
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
openvpn --config server.conf
