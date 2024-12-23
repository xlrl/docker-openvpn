#/bin/sh
set -e
cd /etc/openvpn
#modprobe tun
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
openvpn --config server.conf
