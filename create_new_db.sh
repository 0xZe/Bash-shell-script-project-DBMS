echo "Enter the Name of the Database:"
read -r db_name
if [ -d ./DataBases/$db_name  ]
    then
        echo "Database is already exist"
else
        mkdir ./DataBases/"$db_name"
        echo "Database is created successfully!"
fi



