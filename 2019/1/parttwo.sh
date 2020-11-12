#!/bin/bash
FILE_PATH=$1
FUEL_REQUIREMENT_TOTAL=0
FUEL_CALCULATED=0

calculate_fuel () {
    local temp=$(($1/3-2))
    echo $temp
}

while read c; do
  echo "$c"
  FUEL_CALCULATED=$(calculate_fuel $c)
  while (($FUEL_CALCULATED > 0)); do
    FUEL_REQUIREMENT_TOTAL=$(( FUEL_REQUIREMENT_TOTAL+FUEL_CALCULATED ))
    FUEL_CALCULATED=$(calculate_fuel $FUEL_CALCULATED)
  done
  
done < "$FILE_PATH"

echo Fuel Requirement Total: $FUEL_REQUIREMENT_TOTAL