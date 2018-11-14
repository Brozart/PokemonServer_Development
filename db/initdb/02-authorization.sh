mysql -u root -e "create database authorization"
mysql -u root authorization < /docker-entrypoint-initdb.d/dumps/Authorization.sql