# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartins <lmartins@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/01 00:26:45 by lmartins          #+#    #+#              #
#    Updated: 2020/08/08 00:10:13 by lmartins         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service nginx start
service mysql start
service php7.3-fpm start
bash