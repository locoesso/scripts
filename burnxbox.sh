#!/bin/bash
if [ "$1" != "" ]; then
	FILE=$1
	if [ -f $FILE ];
	then
		echo -e "\nFile $FILE exists"
		echo -e "\033[1mVerifying with $1 ABGX360...\033[0m"
		echo ""
		abgx360 $1
		echo -e "\033[1m\n\nBurning \033[31m$1\033[0m\033[1m to disc...\n\033[0m"
		read -p "Continue (y)es or (n)o ?" ans
		if [ "$ans" == "y" ]
		then
			echo -e "\n\033[1mBurning $1 to disc...\033[0m\n"
			growisofs -use-the-force-luke=break:2133520 -speed=2 -Z /dev/sr0=$1
		else
	     	echo -e "\n\033[1mBurning aborted.\n\033[0m"
		fi
	else
		echo "File $FILE does not exists"
	fi
else
echo -e "No file name!\nUsage: burnxbox burnme.iso"
fi

