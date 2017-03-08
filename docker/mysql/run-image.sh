#!/bin/sh

docker run --name messaging-mysql.dev \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=password \
	-e MYSQL_DATABASE=mydb \
	-e MYSQL_USER=admin \
	-e MYSQL_PASSWORD=admin \
	-d 192.168.251.222:5000/mysql \
	--character-set-server=utf8 --collation-server=utf8_general_ci