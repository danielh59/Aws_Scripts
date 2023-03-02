users=("arosalez" "eowusu" "jdoe" "ljuan" "mmajor" "mjackson" "nwolf" "psantos" "smartinez" "ssarkar")
password="password123"
USERS_LENGTH=${#users[@]}
echo $USERS_LENGTH 

for (( i=0; i<$USERS_LENGTH; i++ ))
do  useradd ${users[i]} &&  echo $password | passwd ${users[i]}; done 
