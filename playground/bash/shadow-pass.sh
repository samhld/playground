#!/bin/bash

FILE=/etc/shadow

if [$(sudo find / -name $FILE)]
then
  echo "Shadow passwords are enabled"
  if [-x $FILE]
  then
    echo "You have permissions to edit /etc/shadow"
  else
    echo "You don't have permission to edit /etc/shadow"
  fi
else
  echo "File doesn't exist"
fi
