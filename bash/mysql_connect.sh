#/bin/bash
read -p "Mysql user: " user
read -sp "Mysql password: " pass 
echo

read -p "Mysql command: " cmd
read =p "Mysql database: " db

mysql -u $user -p$pass $db -e "$cmd"
