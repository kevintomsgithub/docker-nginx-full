#!/bin/bash -e

mkdir -p var/log/nginx
touch var/log/nginx/error.log

useradd -s /bin/false nginx

mkdir -p /var/cache/nginx/client_temp

apt update && apt install -y vim

vim /etc/nginx/nginx.conf

# vhost_traffic_status_zone;

# location /status {
#     vhost_traffic_status_display;
#     vhost_traffic_status_display_format html;
# }