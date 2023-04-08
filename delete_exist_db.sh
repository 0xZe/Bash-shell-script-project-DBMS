#!/bin/bash
echo -e "Enter a database name to delete: \c"
read db_name
db_path="./DataBases/$db_name"

if [ ! -d "$db_path" ]; 
then
  echo "==================================="
  echo "Database $db_name doesn't exist!!!"
  echo "==================================="

    ./main.sh

else
  
  #rm -r "$db_path"
  #echo "============================================"
  #echo "Database $db_name deleted successfully!!!!!!"
  #echo "============================================"
  
  echo "Are you Sure You Want To delete $db_name Database? y/n"
  read choice;
	case $choice in
		 [Yy]* ) 
			rm -r data/$db_name
			echo "============================================"
         		echo "Database $db_name deleted successfully!!!!!!"
         		echo "============================================"
			;;
		 [Nn]* ) 
      			echo "==========="
			echo "Deleting Canceled!!!"
      			echo "==========="
			;;
		* ) 
			echo "Please choice y/n"
			;;
	esac
  
    ./main.sh

fi
