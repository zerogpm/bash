#!/bin/bash

echo "Your ID is ${UID}"

UID_TO_TEST_FOR="${UID}"

if [[ "${UID}" -ne UID_TO_TEST_FOR ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}"
	exit 1
fi

USER_NAME=$(id -un)
echo "this is question mark value: ${?}"

if [[ "${?}" -ne 0 ]]
then
	echo 'The id command did not execute succesfully'
	exit 1
fi

echo "you user name is ${USER_NAME}"


USER_NAME_TO_TEST_FOR='test'

if [[ "${USER_NAME}" == "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username matches ${USER_NAME_TO_TEST_FOR}"
fi			

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username does not matches ${USER_NAME_TO_TEST_FOR}"
	exit 1
fi

exit 0 