#!/bin/bash

echo "Criando usuário do sistema..."

useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd -e guest10

useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd -e guest11

useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd -e guest12

useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd -e guest13

useradd guest14 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd -e guest14

echo "Finalizado!!"

