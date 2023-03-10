#signing in to ssh-agent  


eval `ssh-agent -s`

cd ~/.ssh && ssh-add <name of private key> 

ssh <host you're connecting to i.e: git@github.com> -T
 
cd ~
