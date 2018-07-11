#!/bin/bash
#
# echo $RANDOM
#

    function logit() {
      LOGLEVEL=$1
      TAG=$2
      PID=$3
      shift 3
      local MSG=$@
      logger -t $TAG -p $LOGLEVEL -i $PID $MSG
    }
    logit crit randomly $$ message: this is a log


# function my_logger() {
#   local MESSAGE=$@
#   echo "$MESSAGE"
#   logger -i -t randomly -p user.info "$MESSAGE"
# }
#
# my_logger "Random number: $RANDOM"
# my_logger "Random number: $RANDOM"
# my_logger "Random number: $RANDOM"
