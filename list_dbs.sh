dir=DataBases
if [ "$(ls -A $dir)" ]; 
    
    then
    echo "======================="
    echo "AVAILABLE DATABASES IS:"
    echo "======================="
    ls $dir
    echo "======================="

else 
    echo "========================="
    echo "NO AVAILABLE DATABASES!!!"
    echo "=========================="
    
fi
