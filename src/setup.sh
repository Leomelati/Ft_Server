# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartins <lmartins@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/31 21:26:00 by lmartins          #+#    #+#              #
#    Updated: 2020/08/01 00:32:48 by lmartins         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

apt-get update && apt-get upgrade
apt-get -y install nginx mariadb-server
service mysql start
./secure_installation_mysql.sh
mariadb -u root