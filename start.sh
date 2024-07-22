#!/bin/sh

/app/tailscaled -state=mem: -statedir=/var/lib/tailscale -socket=/var/run/tailscale/tailscaled.sock -tun userspace-networking -socks5-server localhost:1055 &
/app/tailscale up --ssh --authkey=${TAILSCALE_AUTHKEY} --hostname=${KOYEB_APP_NAME}-${KOYEB_SERVICE_NAME}

sleep infinity
