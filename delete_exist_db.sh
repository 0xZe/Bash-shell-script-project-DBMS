echo "Enter a database name to delete: "
read delete_db
db_path="./DataBases/$delete_db"

    if [ ! -d "$db_path" ]; 
    then
      echo "Database does not exist."
    else
        rm -ir "$db_path"
        echo "Database deleted successfully."
    fi
    