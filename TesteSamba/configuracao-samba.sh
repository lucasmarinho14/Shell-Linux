#!/bin/bash

echo "Criando diretórios publico"

mkdir /publico

echo "testando texto" > /publico/arquivo-teste1.txt
echo "testando texto" > /publico/arquivo-teste2.txt
echo "testando texto" > /publico/arquivo-teste3.txt

chmod 777 /publico

echo "Instalando o samba"
apt-get update
apt install systemctl -y
apt install samba -y
apt-get update

echo "Configurando o samba"

echo "[publico]" >> /etc/samba/smb.conf
echo "path = /publico" >> /etc/samba/smb.conf
echo "writable = yes" >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf
echo "guest only = yes" >> /etc/samba/smb.conf

systemctl restart smbd
systemctl status smbd

echo "Tudo certo"


