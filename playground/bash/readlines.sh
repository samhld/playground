#!/bin/bash



    echo \>\>\>\>\>\> Reading lines out of directory: $1 \<\<\<\<\<\<
    COUNTER=1
    while read line
    do
      echo "${COUNTER}: ${line}"
      ((COUNTER++))
      sleep .2
    done < $1
