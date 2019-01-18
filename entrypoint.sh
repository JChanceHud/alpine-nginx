#!/bin/sh

set -e

if [ ! -z "$CONFIG_URL" ]; then
  wget -O /etc/nginx/nginx.conf -N $CONFIG_URL
fi

exec nginx -g "daemon off;"
