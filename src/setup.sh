# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartins <lmartins@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/31 21:26:00 by lmartins          #+#    #+#              #
#    Updated: 2020/08/08 04:17:19 by lmartins         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# Installing the necessary commands
apt update && apt upgrade
apt -y install nginx mariadb-server php7.3 php-fpm php-mysql php-cli php-mbstring wget openssl

mkdir /var/www/localhost

chmod -R 755 /var/www/localhost

# Installing phpMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
tar -xf phpMyAdmin-5.0.2-english.tar.gz
rm -rf phpMyAdmin-5.0.2-english.tar.gz
mv phpMyAdmin-5.0.2-english/ /var/www/localhost/phpmyadmin

# Installing Wordpress
wget https://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz
rm -rf latest.tar.gz

# Generating SLL Certificate
mkdir /etc/nginx/ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=BR/ST=SP/L=SP/O=42SP/CN=lmartins" -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt

# Configuring mariadb

service mysql start
bash /src/secure_installation_mysql.sh
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
mysqladmin --user=root password ""

# Configuring phpMyAdmin
mkdir -p /var/lib/phpmyadmin/tmp
cp /src/config.inc.php /var/www/localhost/phpmyadmin/config.inc.php

# Configuring Wordpress
cp /src/wp-config.php /wordpress/wp-config.php
mv wordpress /var/www/localhost/
chown -R www-data:www-data /var/www/localhost/

# Configuring Nginx

mv /src/nginx_conf /etc/nginx/sites-available/default
mv /src/info.php /var/www/localhost/info.php

