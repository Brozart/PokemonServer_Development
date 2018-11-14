mysql -u root -e "create database pokemon"
mysql -u root pokemon < /docker-entrypoint-initdb.d/dumps/Pokemon.sql