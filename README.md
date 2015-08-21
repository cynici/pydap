# Pydap in docker

This is a fat docker image that serves [Pydap](http://www.pydap.org/) using [uWSGI](https://uwsgi-docs.readthedocs.org/en/latest/)

The runtime directory structure in the container is similar to the official guideline, http://www.pydap.org/server.html#running-pydap-with-uwsgi, with these notable differences:

- No virtualenv
- /var/www/pydap/server/data/ is mounted into the container at runtime as defined in docker-compose.yml

Proceed to [docker-compose documentation](https://docs.docker.com/compose/) on how to build, run and customize
