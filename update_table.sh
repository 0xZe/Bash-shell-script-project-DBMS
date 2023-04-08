#!/bin/bash
db_name=$1
read  -p  "Enter Table you want to delete: " table_name
table_path=DataBases/$db_name/$table_name

if [ ! -f "$table_path" ]; then

    echo "Table does not exist!!!!!!"

    ./manipulate_db.sh $1

else

    echo "Enter column you want to update: "
    read col_update
                                                             
    check_col=`awk -v RS=':' "/$col_update/ "'{print NR}' ./DataBases/$1/.metadata/$table_name.meta``
    col_NR=`awk -v RS=':' "/$col_update/ "'{print NR}' ./DataBases/$1/.metadata/$table_name.meta``

    if [ -z $check_col ]
      then
      echo "Column does not exist!!!!!"

      ./manipulate_db.sh $1

    else

    #value you want to change
    echo "Enter $col_update value you want to change: "
    read value_update

    
    value_NR=`cut -d: -f $col_NR mytb 2>/dev/null | awk "/$value_update/ "'{print NR}' `
    

    echo "Enter new $value_update value"
    read new_value

    old_value=$(awk 'BEGIN{FS=":"} {
    if(NR=="'$value_NR'"){
         print $'$col_NR';     
         }
      }' ./DataBases/$1/$table_name)

    sed -i ''$value_NR's/'$old_value'/'$new_value'/g' mytb 2>>/dev/null

    echo "Updated $col_update successfully !!!"

    fi
    
fi