#!/bin/bash
file=$1
if [ -d $file ] ; then
  cp -r $file $file.bak
    if [ $? -eq 0] ; then
      echo "A backup for the folder $file was created"
    fi
elif [ -f $file ] ; then
  cp $file $file.bak
    if [ $? -eq 0] ; then
      echo "A backup for the file $file was created"
    fi
else
    echo "Couldn't find $file"
fi
