#!/bin/bash
#All users from argv group
group=$1

for line in "`grep "^${group}:" /etc/group`" ; do
 usersGroup=$(echo ${line} | cut -d':' -f4 | sed 's/,/ /g')
 gid=$(echo $line | cut -d':' -f3)
done 

usersPasswd=$(awk -F":" '$4 ~ /^'${gid}'$/ { printf("%s ",$1) }' /etc/passwd)

echo "Grupo: $1"
echo "$usersGroup $usersPasswd"

