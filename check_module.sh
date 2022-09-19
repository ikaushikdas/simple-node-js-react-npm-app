#! /bin/bash

my_file='node_modules'
if [ -f $my_file ]
then
echo "Node Modules already exists"
else
	npm install
fi

