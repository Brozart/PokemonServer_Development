mysql -u root -e "create database emrprovisioning"
mysql -u root pokemon < /docker-entrypoint-initdb.d/dumps/Pokemon.sql