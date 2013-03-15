#!/bin/bash

if [ ! -d input_folder ]
then
  echo "No input_folder"
  exit 1
fi

if [ ! -d output_folder ]
then
  mkdir output_folder
fi

for file in input_folder/*
do
  filename=`basename "$file"`;
  echo "Converting $filename";
  iconv -c --verbose -f GBK -t UTF-8 "$file" -o "output_folder/$filename";
done;

