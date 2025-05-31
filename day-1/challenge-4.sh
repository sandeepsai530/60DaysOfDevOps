#Create a new user called devops_user and add them to the sudo group.

sudo adduser devops_user
sudo usermod -aG sudo devops_user

#optional to verify
getent group sudo
