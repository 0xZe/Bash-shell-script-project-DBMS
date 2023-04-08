#!/bin/bash

echo "====================================="
echo "WELCOME IN ITI DATABASE ENGINE:)"
echo "====================================="

PS3="Choose waht you want: "
select choice in "Create DB" "List DB" "Connect DB" "Delete DB" "Quit"
do
    case $REPLY in
    # Create New Database 
    1) ./create_new_db.sh ;; 
    # list Databases 
    2) ./list_dbs.sh ;;
    # Connect a Database
    3) ./connect_db.sh ;;
    # Delete an existing Database
    4) ./delete_exist_db.sh ;;

    5) 
         exit 
        ;;
        
    *) echo "$REPLY is not one of the choices" ;;
    
    esac
done