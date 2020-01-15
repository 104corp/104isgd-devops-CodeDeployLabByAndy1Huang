#!/bin/bash
aws s3 sync s3://andy1huang-test-travis/BlueGreen /tmp
cp /tmp/index.html /var/www/html/index.nginx-debian.html
nginx -s reload
