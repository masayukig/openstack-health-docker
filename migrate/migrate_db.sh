#!/bin/sh

# Create DB and configure privileges
#mysql -uroot -pmy-secret-pw -e 'CREATE DATABASE subunit CHARACTER SET utf8;'
mysql -uroot -p$MYSQL_ROOT_PASSWORD -e 'GRANT ALL PRIVILEGES ON '$MYSQL_DATABASE'.* to '$MYSQL_USER'@"%" IDENTIFIED BY "'$MYSQL_PASSWORD'";'
