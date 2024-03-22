#!/bin/bash
#change column data type by setting it to null, you just have to pass the col_name as argument
  2 PSQL="psql -x --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"
  3 
  4 while  IFS='|' read -r left right
  5  do
  6 
  7     echo "$($PSQL "ALTER TABLE $1 ALTER COLUMN $right SET NOT NULL")"
  8 
  9  done <<< "$($PSQL "SELECT column_name  FROM information_schema.columns WHERE table_name ='$1'")"
 10 
~                                                                                        
