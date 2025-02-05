#!/bin/bash
path=$1
if [ -d $path ] ; then
  echo "The folder $path has the following files: "
  ls $path
  read -p "¿Do you wish to empty the content of the folder? [Y/N] " option
  if [ $option = "S" ] ; then
    cd $path
    rm -r *
    echo "All the files in $path were deleted"
  elif [[ $option = "N" || $? -eq 1 ]] ; then
    echo "The content was not deleted"
  else
    echo "Incorrect option"
  fi
else
  "$path doesn't exist"
fi
