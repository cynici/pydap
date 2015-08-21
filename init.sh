#! /bin/bash
#
# DO NOT MODIFY - this script gets overwritten by the run script
# This script will execute as 'root' in the container
#
set -eux

# Create runtime user
adduser --home /var/www/pydap --shell /bin/bash --uid 1000 --disabled-password --gecos "" runuser

chown -R runuser.runuser /var/www/pydap

su runuser -c "/usr/local/bin/uwsgi  --http-socket 0.0.0.0:10080  --master --processes 4  --paste config:/var/www/pydap/server/server.ini"
