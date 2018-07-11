#!/bin/bash

# checks if the argument passed to the script is a directory in local directory
if [ -d $1 ]
then
  echo "Confirmed, directory"
elif ! [ -e $1 ]
then
  echo "Doesn't exit"
else
  echo "Not a directory"
fi
