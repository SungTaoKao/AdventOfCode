#!/bin/bash
FLOOR=0
COUNT=0
FILE_PATH=$1
CONTENT=`cat $FILE_PATH`

while read -n 1 c; do
  echo "$c"
  if [ $FLOOR -lt 0 ]; then
    break
  fi
  if [ "$c" = "(" ]; then
    FLOOR=$((FLOOR+1 ))
    echo $FLOOR
  else 
    FLOOR=$(( FLOOR-1 ))
  fi
  COUNT=$(( COUNT+1 ))
done < "$FILE_PATH"
echo $FLOOR
echo $COUNT