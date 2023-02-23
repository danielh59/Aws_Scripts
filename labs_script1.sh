#!/bin/bash

#First Commit

#Here you are moving the file from the directory you downloaded the lab in and moving it into the Ubuntu environment.
sudo mv /mnt/c/Users/<your_windows_username>/<folder of lab Downloads>/labsusers.pem ~

sudo chmod 400 labsusers.pem

echo "What's the public ip of the lab?"

read  public_ip

lab_login="ssh -i labsuser.pem ec2-user@"$public_ip""

if [[ "$lab_login" ]]; then  

	echo "Great Success!!!"
else
	echo "You failed. Try again later"
fi


