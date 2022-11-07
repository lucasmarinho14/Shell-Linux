#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC



####################################
#  Criando usuários do grupo ADM   #
####################################

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

####################################
#  Criando usuários do grupo VEN   #
####################################

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN


####################################
#  Criando usuários do grupo SEC   #
####################################

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

##########################################
#  alterando permissões dos diretórios   #
##########################################
echo "Especificando permissões dos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Fim..."
