#!/bin/bash

LIMIT_TIME=12
TIME_INTERVAL=3

echo "This script will run for $LIMIT_TIME seconds."

while [ "$SECONDS" -le "$LIMIT_TIME" ]
do
  if [ "$SECONDS" -eq "$LIMIT_TIME" ]
  then
    break
  fi
  echo "Has been running for $SECONDS seconds"
  sleep $TIME_INTERVAL
done

echo "Script ran for $LIMIT_TIME seconds"
