#! /bin/bash
echo "Enter your password" 
read VALID_PASSWORD #input; the variable
if [ $VALID_PASSWORD = "favourcole" ] #condition has to be met so we can get access
then
	echo "You have Access" #message authorised or access granted
 
else
	echo "Access denied" #message denied
fi #this makes sure the if statement is finished

