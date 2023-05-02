#!/bin/bash

function makedirs() {
echo "1. mkdirrs"
cd ~
mkdir -p grocery/{bakery/bread/{focaccia,cholla},drinks/juices/{pepsi,coke}}
tree ~/grocery

echo "2. makefile"
touch ~/grocery/drinks/juices/coke/coke_not_healthy 

echo "3. change perms"
chmod 555 ~/grocery/drinks/juices/coke/coke_not_healthy

echo "4. makefile pepsi zero"
touch ~/grocery/drinks/juices/pepsi/pepsi_zero

echo "5. change perms"
chmod 775  ~/grocery/drinks/juices/pepsi/pepsi_zero

echo "6. Copy the file Pepsi_Zero in bread subdirectories"
for d in ~/grocery/bakery/bread/*; do cp ~/grocery/drinks/juices/pepsi/pepsi_zero "$d"; done

echo "7. rename cholla to petta"
mv ~/grocery/bakery/bread/cholla ~/grocery/bakery/bread/petta

echo "8. move petta to drinks"
mv ~/grocery/bakery/bread/petta  ~/grocery/drinks/

echo "9. delete grocery"
echo "DELETING GROCERY it will take a time!!"
sleep 3
rm -rvf ~/grocery
echo "DELETED!!!!!!!!"
}

function worde() {
read -p "enter a sentence with letter \"e\": " sente
echo "Your sentences that contains words with e letters: " 
echo $sente | grep -oh "\w*e\w*"
}

worde
