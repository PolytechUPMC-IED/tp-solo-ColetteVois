#!/bin/bash

#QEUSTION 2
for i in *; do
	extension="${i##*.}"
	if [[ "$extension" == "tgz" ]];
	then
		tar xzvf $i;
	fi
done;

#QUESTIOnN 3
#l'option -g
