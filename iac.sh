#!/bin/bash


# INFRAESTRUTUTURA COMO CODIGO (IAC)


echo -e "\n"

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo -e "\n"

echo "Diretorios criados com sucesso!"

echo -e "\n"

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo -e "\n"

echo "Grupos criados com sucesso!"

echo -e "\n"

echo "Criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha321) -G GRP_SEC

echo -e "\n"

echo "Usuarios criados com sucesso e adicionados aos respectivos grupos!"

echo -e "\n"

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo -e "\n"

echo "Concluido!"

echo -e "\n"
