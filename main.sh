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



function main () {
while :
	do
		echo -e "\n\n\n***************************"
		echo          "***************************"
		echo          "MAKE YOUR CHOISE RIGHT NOW!"
		echo          "***************************"
		echo          "***************************"

			 echo "1.  makedirs"
			 echo "2.  Words with e"
			 echo "3. python script"
			 echo "4. Quit"

		read -p "take your choice: " choice
		case $choice in
 
			1) makedirs ;;
			2) worde ;;
			3) python file.py ;;
			4) break ;;
			*) echo "nums from 1 to 4 ONLY" ; sleep 3 ;;
		esac
	done
}
main

























