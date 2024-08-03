#!/bin/bash

echo "Verificando Diretórios..."

# Função para verificar a existência de um diretório
check_directory() {
    if [ -d "$1" ]; then
        echo "Diretório $1 existe."
    else
        echo "Diretório $1 não existe!"
    fi
}

# Diretórios a serem verificados
check_directory "/publico"
check_directory "/adm"
check_directory "/ven"
check_directory "/sec"

echo "Verificando Grupos..."

# Função para verificar a existência de um grupo
check_group() {
    if getent group "$1" > /dev/null 2>&1; then
        echo "Grupo $1 existe."
    else
        echo "Grupo $1 não existe!"
    fi
}

# Grupos a serem verificados
check_group "GRP_ADM"
check_group "GRP_VEN"
check_group "GRP_SEC"

echo "Verificando Usuários..."

# Função para verificar a existência de um usuário
check_user() {
    if id "$1" > /dev/null 2>&1; then
        echo "Usuário $1 existe."
    else
        echo "Usuário $1 não existe!"
    fi
}

# Usuários a serem verificados
check_user "carlos"
check_user "maria"
check_user "joao"
check_user "debora"
check_user "sebastiana"
check_user "roberto"
check_user "josefina"
check_user "amanda"
check_user "rogerio"

echo "Verificação concluída!"
