#!/bin/bash

# Initialize variables

CMD=""
DIR_LIST="trunk/test/ trunk/troll/"

# Declare and define functions

function make_sym_links(){
	ln -s ${1} ${1%%.*}.so
	ln -s ${1} ${1%%.*}.so.1
	ln -s ${1} ${1%%.*}.so.1.0
}

function check_root(){
	if [ ${EUID} != 0 ]
		then echo "Error: Please run as root"
		exit
	fi
}

# Main

check_root
make_sym_links myLib.so.5.3.4


#for DIR in $DIR_LIST
#do
#	DIR="${DIR}Makefile"
#	echo $DIR
#done
