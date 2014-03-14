#!/bin/bash

	echo "+++++++++++++++++++++++"
	echo "Willkommen beim Monolog!"
	echo "+++++++++++++++++++++++"

while :
do
	read  -p ">" input	

	if [[ $input == */quit* ]]
	then
	  	echo "Programm beendet";
		exit 0;
	fi;

	./say.sh "$input";
done
