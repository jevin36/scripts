#!/bin/bash

search_dir=$1

if [ -z $search_dir ];then
  echo "Remove Prefix (\"<number> - some text\") from file in a directory."
  echo "Please specify a fully quallified path!"
  exit -1
fi
echo "Using search directory [ $search_dir ]"
for file_name in "$search_dir"/*
do
  mv "$file_name" "${file_name#*- }"
done
