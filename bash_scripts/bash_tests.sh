#! /bin/bash

if (( $# < 1)) 
	then
		echo "Usage: $0 <name>"
		exit 1
fi

case $1 in

	"directory")
		
		find /etc -maxdepth 1 -type d
		;;

	"link")

		find /etc -maxdepth 1 -type l
		;;

	*)
		echo "Usage $0 directory | link"
		;;

esac