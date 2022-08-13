#!/bin/bash

#read input from the user

LAMPP=/opt/lampp/lampp

if [[ $(id -u) -ne 0 ]]; then
	echo  "You have to be root" >&2
	exit 1
else

		read -e -p "Do you want to 'start' or 'stop' Xampp? press > "
	  
		case "$REPLY" in 
			start) 	${LAMPP} start ;;
			stop) 	${LAMPP} stop exit ;;
			*) echo "Please enter 'start' or 'stop'." 
			 REPLY=999;;
		esac

fi 
