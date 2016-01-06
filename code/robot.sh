#!/bin/bash

[ $# -eq 0 ] && { echo "Error: usage: $(basename $0) <file> <option> (-t to tranfer to the robot)" >&2; exit 1; }

sudo nbc $1.nxc -O=$1.rxe

if [ "$2" = "-t" ]
then
  sudo t2n -put $1.rxe
fi
