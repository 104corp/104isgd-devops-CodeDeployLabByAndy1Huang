#!/bin/bash
mkdir -p /tmp/s3sync
aws s3 sync s3://andy1huang-test-travis/BlueGreen /tmp/s3sync
cp /tmp/s3sync/index.html /var/www/html/index.nginx-debian.html
nginx -s reload
rm -rf /tmp/s3sync
