#enter column 
echo "Enter column you want to update: "
read col_update
#checkcol=`awk -v RS=':' "/$colUpdate/ "'{print NR}' mydb/.metadata/mytb.meta`
col_NR=`awk -v RS=':' "/$col_update/ "'{print NR}' ./.metadata/mytb.meta`
#echo $updateNum
#echo "jjjj"
#fieldNumber=
#searchResult=
#if [ -z $checkcol ]
#    then
#    echo "column does not exist"
#    ./manipulate_db.sh $1
#else

    #value yoy want to change
    echo "Enter $col_update value you want to change: "
    read value_update
    #line number
    value_NR=`cut -d: -f $col_NR mytb 2>/dev/null | awk "/$value_update/ "'{print NR}' `
    #echo $searchResult 

    #echo $updateNum

    echo "Enter new $value_update value"
    read new_value

    old_value=$(awk 'BEGIN{FS=":"} {
    if(NR=="'$value_NR'"){
         print $'$col_NR';     
         }
      }' mytb)

    sed -i ''$value_NR's/'$old_value'/'$new_value'/g' mytb 2>>/dev/null

    #sed -i 's/STRING_TO_REPLACE/STRING_TO_REPLACE_IT/g' filename

    echo "Updated $col_update successfully !!"

    
#fi