#!/bin/bash
path=$1
if [ -f $path ] ; then
  echo "This is the content of the file $path: "
  cat $path
  read -p "Do you wish to empty the file? [Y/N] " option
  if [ $option = "Y"] ; then
    echo -n "" > $path
    echo "File emptied"
  elif [[ $option = "N" || $? -eq 1 ]] ; then
    echo "Content of the file was not deleted"
  else
    echo "Not an option"
  fi
else "File $path not found"
fi
