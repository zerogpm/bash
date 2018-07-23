#!/bin/bash


if [[ "${UID}" -eq 0 ]]
then
	read -p 'Enter the username to create ' USER_NAME
	read -p 'Enter the name of the person who this account is for: ' COMMENT
	read -p 'Enter the password to use for the account: ' PASSWORD
	useradd -c "${COMMENT}" -m ${USER_NAME}
	echo "${USER_NAME}:${PASSWORD}" | chpasswd
	passwd -e ${USER_NAME}
	if [[ "${?}" -eq 0 ]]
	then
		echo "user accout created"
		echo "user name is : ${USER_NAME}"
		echo "user password is : ${PASSWORD}"
		echo "your host name is ${HOSTNAME}"
	else
		echo "The user create error"
		exit 1
	fi
else
	echo "This is not a root account"
	exit 1
fi
