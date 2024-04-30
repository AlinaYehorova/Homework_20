#!/bin/bash
for ((i=1;i<=100;i++));
do
  touch $RANDOM;
done

for file in *;
do
if [[ $file =~ ^[0-9]+$ && $((file % 2)) -eq 0 ]];
then
   mv "$file" ../EVEN/

fi
done
