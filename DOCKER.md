# docker-machine

## creating the machine

```bash
docker-machine create -d virtualbox --virtualbox-memory 4096 --virtualbox-disk-size 30000 default
```

# docker-compose

## default docker-compose

### Run docker-compose build

```bash
docker-compose build
```

### Run docker-compose 

```bash
docker-compose up
```

## Using pre-build images with parametrable PHP version

### Building specific PHP version images

```bash
docker build -t demoformationapi_dev-5.6:latest -f Dockerfile-dev-5.6 .
docker build -t demoformationapi_dev-7.0:latest -f Dockerfile-dev-7.0 .
```

### Run docker-compose 

```bash
PHPVERSION=5.6 docker-compose -f docker-compose-php-params.yml up
PHPVERSION=7.0 docker-compose -f docker-compose-php-params.yml up
```

## docker-compose down

```bash
docker-compose down
```

```bash
PHPVERSION=5.6 docker-compose -f docker-compose-php-params.yml down 
```

## Getting environment

```bash
docker-compose run <service-name> env
```

# Docker

# Docker volumes clean up

```bash
docker volume ls -qf dangling=true
```

```bash
docker volume rm $(docker volume ls -qf dangling=true)
```

# Docker cleanup containers

```bash
docker rm $(docker ps -a -q)
```

# Docker removing dangling images

```bash
docker rmi -f `docker images -f 'dangling=true' -q`
```

## Connecting in a running container with bash

```bash
docker exec -it <container name/id> bash
```
