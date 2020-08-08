# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    autoindex.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmartins <lmartins@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/08 05:07:40 by lmartins          #+#    #+#              #
#    Updated: 2020/08/08 05:28:36 by lmartins         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

path="/etc/nginx/sites-available/default"
grep "autoindex on" $path >> /dev/null
if [ $? -eq 0 ]; then
	sed -i 's/autoindex on;/autoindex off;/' $path;
else
	sed -i 's/autoindex off;/autoindex on;/' $path;
fi
service nginx restart