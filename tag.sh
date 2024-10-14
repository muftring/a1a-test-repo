#!/bin/bash

TAG=$1
if [ "$TAG" == "" ]
then
  TAG=`git tag | sort -rn | head -1 | awk -F. '{printf("%s.%s.%s\n",$1,$2,$3+1)}'`
fi

echo git tag -a $TAG -m \"update\"
echo git push origin $TAG
