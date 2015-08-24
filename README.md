# Pydap in docker

This is a fat docker image that serves [Pydap](http://www.pydap.org/) using [uWSGI](https://uwsgi-docs.readthedocs.org/en/latest/)

The runtime directory structure in the container is similar to the official guideline, http://www.pydap.org/server.html#running-pydap-with-uwsgi, with these notable differences:

- No virtualenv
- /var/www/pydap/server/data/ is mounted into the container at runtime as defined in docker-compose.yml

## Usage

First, decide on the full pathname (existing directory) outside the container where your data will be stored.

You may either pull the auto-built image from Docker hub, or build it locally from the Dockerfile.

### Using [docker-compose](https://docs.docker.com/compose/)

* Edit docker-compose.yml to set the pathname of the data directory

```
# Add -d if you want it run as a background service
docker-compose -f docker-compose.yml up
```

### Using docker commands

* If you decide to build from the Dockerfile locally:

```
docker build --rm -t pydap .

# Next, to run:
docker run -it --rm -v {data-directory}:/var/www/pydap/server/data pydap

# Or replace '-it --rm' with '-d' if you want it as a background service
```

* If you decide to pull auto-built image from Docker hub:

```
docker run -d -v {data-directory}:/var/www/pydap/server/data cheewai/pydap
```
