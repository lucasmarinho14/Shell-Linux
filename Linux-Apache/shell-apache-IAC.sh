#!/bin/bash

echo "Instalando Apache..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y 
apt-get install wget -y
apt-get install systemctl -y

echo "Baixando aplicação"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/


