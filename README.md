# curry 

A tool to save a set of configurationfiles that create a theme

## explanation
It saves the configuration files in a tree that mirrors the path of the original
in the filesystem eg:
	/home/pscha/.bashrc 
is to be found in
	/home/pscha/.curry/home/pscha/.bashrc

Therefor it is easy to see which files have been save into the configuration set
and where they live in the original system.

## usage 
	curry new [name] 
		creates a new configuration set

	curry add [name] [file]
		adds a file to the configuration set

	curry load [name]
		loads the configuration in name

	curry list
		lists all the configurations

## installation:
	
	to create an installation at /usr/local/bin/ use
		'make install'

	to create an installation at $(HOME)/bin use
		'make localinstall'
	
## deinstallation
	to uninstall curry use 
		'make uninstall'

