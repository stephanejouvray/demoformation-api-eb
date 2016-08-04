# demoformation-api

## Configure for local development:

create a build.local.properties file with:

```
dir.vendor=./vendor
phinx.bin=${dir.vendor}/bin/phinx

db.host=127.0.0.1
db.port=3306
db.dbname=skeleton
db.username=root
db.password=
```
## Start and Reset your database

```bash
RESET_DB=true docker-compose up
```

## Stopping your containers

```bash 
docker-compose stop
```

## Starting your containers

```bash 
docker-compose start
```

## Stop and remove containers

```bash 
docker-compose down
```

# Building Images

## Login to your docker hub

```bash
docker login
```

## Build and pushing your container

```bash
docker-compose -f docker-compose-build.yml build
docker push interact-iv/demoapi-php5.6:latest 
```
