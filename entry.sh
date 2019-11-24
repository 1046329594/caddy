#!/bin/bash
echo "http://$FROM {
gzip
proxy / http://$TO
}" > /usr/local/caddy/Caddyfile
caddy --conf /usr/local/caddy/Caddyfile