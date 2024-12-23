FROM alpine:latest
RUN apk update && apk upgrade && apk add --no-cache easy-rsa iproute2 openvpn
RUN echo "net.ipv4.ip_forward=1" >> /etc/sysctl.d/ipv4.conf && \
    echo "tun" >> /etc/modules-load.d/tun.conf

# RUN rc-update add openvpn default
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT /usr/local/bin/entrypoint.sh

