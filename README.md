# Horizontally scaling a web service
[![Docker hub badge](http://dockeri.co/image/willprice/prime-server)](https://hub.docker.com/r/willprice/prime-server/)
[![Build Status](https://travis-ci.org/willprice/horizontally-scaling-webservices-using-docker.svg?branch=master)](https://travis-ci.org/willprice/horizontally-scaling-webservices-using-docker)

This repository demonstrates how you can run a trivial web service that can be run in parallel behind a reverse proxy, and distribute requests accross multiple concurrent instances of the web service.
In this case [nginx](https://www.nginx.com/) functions as our reverse proxy and we use [docker-gen](https://github.com/jwilder/docker-gen) to dynamically configure nginx to change [upstream](http://nginx.org/en/docs/http/ngx_http_upstream_module.html) configuration of the server which handles request distribution across the concurrent web service instances.


## How to play
Install [docker](https://docs.docker.com/engine/installation/) (ideally on
linux, otherwise you'll struggle with an additional layer of virtual machine networking to route through)

* Start the containers

```
$ docker-compose up
```

* Inspect the reverse proxy configuration

```
$ docker exec cat $PROXY_CONTAINER_NAME /etc/nginx/conf.d/default.conf
```
* Scale the number of web services

```
$ docker-compose prime_server=5
```

* Inspect the reverse proxy configuration

```
$ docker exec cat $PROXY_CONTAINER_NAME /etc/nginx/conf.d/default.conf
```
