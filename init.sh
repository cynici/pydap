#! /bin/bash
#
# This script will execute as 'root' in the container
set -ux

# Create runtime user
adduser --home /var/www/pydap --shell /bin/bash --uid ${UID} --disabled-password --gecos "" runuser

chown -R runuser.runuser /var/www/pydap

su runuser -c "/usr/local/bin/uwsgi  --http-socket 0.0.0.0:10080  --master --processes 4  --paste config:/var/www/pydap/server/server.ini"
