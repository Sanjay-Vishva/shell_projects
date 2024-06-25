#!/bin/bash

create_file() {
	echo "Enter filename"
	read filename
	if [ -e "filename" ]; then
		echo "File already exit"
	else 
		touch "$filename"
		echo "File $filename is created"
	fi
	}

delete_file() {
	echo "Enter filename"
	read filename 
	if [ -e "$filename" ]; then
		rm "$filename"
		echo "$filename is deleted"
	else 
		echo "File doesnot exist"
	fi
	}

rename_file() {
	echo "Enter filename"
	read oldname
	if [ -e "$oldname" ]; then
		echo "Enter new name of the file"
		read newname
		mv "$oldname" "$newname"
		echo "the $oldname file is renamed as $newname"
	else
		echo "File doesnot exist"
	fi
	}


while true; do
	echo "Enter your choice of action"
	echo "1, Create file"
	echo "2, Delete file"
	echo "3, Rename file"
	echo "4, Exit Program"
	read choice

	case $choice in 
		1) create_file ;;
		2) delete_file ;;
		3) rename_file ;;
		4) echo "Exiting"; exit ;;
		*) echo "Invalid option. Please choose again:" ;;
	esac
done
