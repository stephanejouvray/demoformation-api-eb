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

## eb commands

```bash
eb init --profile XXXX
```

```bash
eb deploy testing --profile XXXX
```

```bash
eb health --profile XXXX
```

