#!/bin/sh

# Lancement du conteneur opportunity-tomee
#

running=$(docker ps -a | grep -E "messaging-tomee.dev " | awk '{print $NF}');


echo "$running";

if [ $running = "messaging-tomee.dev" ]
then
	echo "[docker] stopping $CONTAINER_PREFIX-tomee";
	docker stop messaging-tomee.dev;
	echo "[docker] removing $CONTAINER_PREFIX-tomee and volume";
	docker rm -v messaging-tomee.dev ;
fi

# Démarrage du conteneur tomee

docker run --name messaging-tomee.dev \
	-p 8080:8080 \
	--link messaging-mysql.dev:messaging-mysql \
	-d messaging-tomee.dev