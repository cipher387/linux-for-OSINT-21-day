#!/bin/bash 

x=15
until [ $x -lt 10 ]
do
  echo "$x"
  x=$(( $x - 1 ))
done
