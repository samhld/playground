#!/bin/bash

function file_count() {
  echo $@
  echo $?
  for FILE in "$@"
  do
    cd $FILE
    echo "$FILE: " $(ls $FILE | wc -w)
  done
  echo $?
}
echo $?
#file_count /etc /var
