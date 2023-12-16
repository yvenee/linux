#!/bin/bash


echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /sale
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_SALE
groupadd GRP_SEC

echo "Creating users..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SALE
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SALE
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SALE

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Creating permissions to files..."

chown root:GRP_ADM /adm
chown root:GRP_SALE /sale
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sale
chmod 770 /sec
chmod 777 /public

echo "End..."

