#!/bin/bash
db_name=$1
read  -p  "Enter Table you want to delete: " table_name
table_path=DataBases/$db_name/$table_name

if [ ! -f "$table_path" ]; then
    echo "Table does not exist!!!!!!"

    ./manipulate_db.sh $1
else
    # delete table Content
    rm -ir $table_path
    echo "$table_name was deleted Sucessfully!!!!"

    ./manipulate_db.sh $1
fi