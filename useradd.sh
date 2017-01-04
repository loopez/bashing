if [ $(id -u) -eq 0 ]; then

	echo "This script will add a linux user. To exit write EXIT on the username field or press ctrl^c ";	
    read -p "Enter username : " username
    read -s -p "Enter password : " password
    
if [ $username != "EXIT" ]; then

    #verify user existence with exit code
    egrep "^$username" /etc/passwd >/dev/null
    if [ $? -eq 0 ]; then
        echo -e "\n User $username exists! "
        exit 1
    else
        pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
        useradd -m -p $pass $username
        [ $? -eq 0 ] && echo -e "\n User has been added to system!" || echo -e "\n Failed to add a user!"
    fi
else
    echo -e "\n Only root may add a user to the system"
    exit 2
fi

fi
