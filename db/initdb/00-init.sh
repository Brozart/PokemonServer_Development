# Create all users
mysql -u root -e "CREATE USER 'pokemon'@'%' IDENTIFIED BY 'pokemon'"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'pokemon'@'%'"
mysql -u root -e "CREATE USER 'auth'@'%' IDENTIFIED BY 'auth'"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'auth'@'%'"
