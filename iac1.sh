#!/bin/bash

echo "Criando Diretórios..."


mkdir publico adm ven sec

echo "Diretorios criados!!!"

echo "Criando Grupos...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!!!"

echo "Criando Usuários..."

useradd carlos -c "Usuário adm" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_ADM
passwd -e carlos
useradd maria -c "Usuário adm" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_ADM
passwd -e maria
useradd joao -c "Usuário adm" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_ADM
passwd -e joao
useradd debora -c "Usuário ven" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_VEN
passwd -e debora
useradd sebastiana -c "Usuário ven" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_VEN
passwd -e sebastiana
useradd roberto -c "Usuário ven" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_VEN
passwd -e roberto
useradd josefina -c "Usuário sec" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_SEC
passwd -e josefina
useradd amanda -c "Usuário sec" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_SEC
passwd -e amanda
useradd rogerio -c "Usuário sec" -s /bin/bash -m -p $(openssl passwd -6 123456) -G GRP_SEC
passwd -e rogerio


echo "Usuários criados!!!"

echo "Mudando grupo dos diretórios...."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Grupos alterados!!!"

echo "Criando permissões nos diretórios..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões finalizadas!!!"



