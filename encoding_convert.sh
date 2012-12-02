#!/bin/bash

for file in input_folder/*
do
	filename=`basename "$file"`;
	echo "$filename";
	iconv -c --verbose -f GBK -t UTF-8 "$file" -o "output_folder/$filename";
done;
