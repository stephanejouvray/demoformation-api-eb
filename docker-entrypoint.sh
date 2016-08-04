#!/bin/bash

cd /var/www
composer install 
php public/index.php development enable 

if [ "$RESET_DB" ]; then
  ./vendor/bin/phing reset-db 
fi

./vendor/bin/phing setup 

php -S 0.0.0.0:80 -t public public/index.php
