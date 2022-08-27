#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando o Apache e unzip"
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp

echo "Baixando arquivos do site"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos do site"
unzip main.zip
cd linux-site-dio-main

echo "Copiando arquivos do site para a pasta do apache"
cp -R * /var/www/html/

echo "Proceimentos Finalizados....."
