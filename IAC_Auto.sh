#!/bin/bash

echo "Creating the directories..."

mkdir /Shared/ADM
mkdir /Shared/Publico
mkdir /Shared/VEN
mkdir /Shared/SEC

echo "All directories have been created with successuful" 

clear

echo "Now, we are going to create the groups"

clear

echo "Starting to add the groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "All groups have been created with successuful" 

clear

echo "Now, we are going to create the users and assign the groups"

clear

echo "Starting to add the users..."

USER1="carlos"
INFO1="Calos"
GROUP1="GRP_ADM"

USER2="maria"
INFO2="Maria"
GROUP2="GRP_ADM"

USER3="joao"
INFO3="Joao"
GROUP3="GRP_ADM"

USER4="debora"
INFO4="Debora"
GROUP4="GRP_VEN"

USER5="sebastiana"
INFO5="Sebastiana"
GROUP5="GRP_VEN"

USER6="roberta"
INFO6="Roberta"
GROUP6="GRP_VEN"

USER7="josefina"
INFO7="Josefina"
GROUP7="GRP_SEC"

USER8="amanda"
INFO8="Amanda"
GROUP8="GRP_SEC"

USER9="Rogerio"
INFO9="rogerio"
GROUP9="GRP_SEC"

useradd $USER1 -c "$INFO1" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP1
passwd $USER1 -e

useradd $USER2 -c "$INFO2" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP2
passwd $USER2 -e

useradd $USER3 -c "$INFO3" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP3
passwd $USER3 -e

useradd $USER4 -c "$INFO4" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP4
passwd $USER4 -e

useradd $USER5 -c "$INFO5" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP5
passwd $USER5 -e

useradd $USER6 -c "$INFO6" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP6
passwd $USER6 -e

useradd $USER7 -c "$INFO7" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP7
passwd $USER7 -e

useradd $USER8 -c "$INFO8" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP8
passwd $USER8 -e

useradd $USER9 -c "$INFO9" -s /bin/bash -m -p $(openssl passwd -crypt Pass123) -G $GROUP9
passwd $USER9 -e

echo "Assigning the permissions to the users"

chown root:GRP_ADM /Shared/ADM
chown root:GRP_VEN /Shared/VEN
chown root:GRP_SEC /Shared/SEC

chmod 770 /Shared/ADM
chmod 770 /Shared/VEN
chmod 770 /Shared/SEC
chmod 777 /Shared/Publico

echo "We have been finished it!"