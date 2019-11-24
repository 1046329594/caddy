#!/bin/bash
echo "http://$FROM {
gzip
proxy / http://$TO {
    header_upstream Host {host}
    header_upstream X-Real-IP {remote}
    header_upstream X-Forwarded-For {remote}
    header_upstream X-Forwarded-Proto {scheme}
    }
}" > /usr/local/caddy/Caddyfile
caddy --conf /usr/local/caddy/Caddyfile
