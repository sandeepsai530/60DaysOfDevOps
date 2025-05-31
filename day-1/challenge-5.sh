#Create a group called devops_team and add devops_user to that group.

sudo groupadd devops_team 
sudo usermod -aG devops_team devops_user

echo "verify using below command"

groups devops_user
