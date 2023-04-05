 #!/bin/bash
 echo -e "Enter Database Name: \c"
 read -r db_name

  cd ./DataBases/$db_name 2> /dev/null
  

if [ $? -eq 0 ]
  then
    echo "Connected to $db_name Successfully!!!!!!"
    cd ..
    cd ..
    ./manipulate_db.sh $db_name
    ./main.sh
  else
    echo "Database $db_name wasn't found"
    ./main.sh
fi
       
