#!/bin/bash


    read -p "How many lines would you like read out? " NUM_LINES
    echo \>\>\>\>\>\> Reading $NUM_LINES lines out of directory: $1 \<\<\<\<\<\<


    COUNTER=1
    while read line
    do
      echo "${COUNTER}: ${line}"
      sleep .2
      ((COUNTER++))
      if [ $COUNTER -gt $NUM_LINES ]
      then
        break
      fi
    done < $1
