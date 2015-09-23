#!/bin/sh
#
# curry is a tool to manage configurations
# 

if [ "$1" = "new" ]; then
	# create a new directory
	mkdir -p $HOME/.curry/$2
fi

if [ "$1" = "rm" ]; then
	# create a new directory
	rm -rfi $HOME/.curry/$2
fi

if [ "$1" = "add" ]; then
	# copy the configurationfile into the .curry directory
	#mkdir -p $HOME/.curry/$2/$(pwd)/
	cp -R --parent $3 $HOME/.curry/$2
fi

if [ "$1" = "load" ]; then
	# load all the configurations
	sudo cp -Rf $HOME/.curry/$2/* /
fi

if [ "$1" = "list" ]; then
	ls $HOME/.curry
fi

