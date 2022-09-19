#! /bin/bash

my_file=node
if [ -f $my_file ]
then
echo "Node Modules already exists"
else
	npm install
fi

