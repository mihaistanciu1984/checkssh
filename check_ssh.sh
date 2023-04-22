#/bin/bash
echo "Getting LocalSSH Key"
ssh_key="$(cat ~/mihai/id_rsa.pub |  tr -d '\n' | awk '{print $2}')"
grep -i $ssh_key ~/.ssh/known_hosts > /dev/null 2>&1
if [ $? -eq 0 ]
then
   echo "Am gasit"
else
   echo "Nu am gasit"
fi
