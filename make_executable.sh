#!/bin/bash

# Set the opcion intorduced as a variable. Can be either the name of the file or the full path.
exec=$1
if [ -f $exec ] ; then
  chmod +x $exec
    if [ $? -eq 0 ] ; then
      echo "$exec is now executable"
    else
      echo "$exec could not be made executable"
    fi
else
  echo "$exec was not found"
fi
