#!/bin/bash
yum update -y
# Install nginx if not already installed
if ! command -v nginx &> /dev/null; then
    yum install -y nginx
fi
systemctl start nginx
systemctl enable nginx
