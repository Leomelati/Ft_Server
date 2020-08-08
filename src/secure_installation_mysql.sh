# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    secure_installation_mysql.sh                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartins <lmartins@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/31 21:51:57 by lmartins          #+#    #+#              #
#    Updated: 2020/07/31 22:33:54 by lmartins         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

apt --assume-yes install expect

SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"Enter current password for root (enter for none):\"
send \"$MYSQL\r\"
expect \"Change the root password?\"
send \"n\r\"
expect \"Remove anonymous users?\"
send \"y\r\"
expect \"Disallow root login remotely?\"
send \"y\r\"
expect \"Remove test database and access to it?\"
send \"y\r\"
expect \"Reload privilege tables now?\"
send \"y\r\"
expect eof
")

echo "$SECURE_MYSQL"

apt --assume-yes purge expect