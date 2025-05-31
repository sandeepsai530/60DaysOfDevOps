#Change the permissions of day1.txt to allow only the owner to read and write, but no permissions for others.
cd devops_challenge_day_1

chmod 600 day1.txt

#verify using below command.

ls -l day1.txt
