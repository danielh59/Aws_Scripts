#!/bin/bash



cd Downloads/

sudo chmod 400 labsusers.pem

echo "What's the public ip of the lab?"

read  public_ip

lab_login="ssh -i labsuser.pem ec2-user@"$public_ip""

if [[ "$lab_login" ]]; then  

	echo "Great Success"
else
	echo "You failed. Try again later"
fi

cd ~

