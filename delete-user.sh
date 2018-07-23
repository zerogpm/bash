#!/bin/bash


# 
read -p 'username to be delete ' USER_NAME
sudo userdel -r "${USER_NAME}"

if [[ "${?}" -ne 0 ]]
then
	echo 'cannot delete the user'
	exit 1
else
	echo 'deleted the user'
fi

exit 0

