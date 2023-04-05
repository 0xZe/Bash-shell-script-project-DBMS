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
  rm -ir "$db_path"
  echo "============================================"
  echo "Database $db_name deleted successfully!!!!!!"
  echo "============================================"

    ./main.sh

fi
    