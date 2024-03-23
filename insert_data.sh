  1 #! /bin/bash
  2 
  3 if [[ $1 == "test" ]]
  4 then
  5   PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
  6 else
  7   PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
  8 fi
  9 
 10 echo $($PSQL "TRUNCATE games,teams")
 11 
 12 cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_G OPPONENT_G
 13 do
 14 
 15 if [[ $YEAR != year ]]
 16   then
 17 
 18 #check if the winner team already present in the table, if not, insert the team
 19 TEAM=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
 20 
 21 if [[ -z $TEAM ]]
 22    then
 23      echo "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
 24 
 25 fi
 26 #check if opponent name already present in the teams table
 27 TEAM2=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
 28 
 29 if [[ -z $TEAM2 ]]
 30    then
 31      echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
 32 fi
 33 
 34 #Insert table games data
 35 #Get the name of the team and then associate the winner and opponent id accordingly
 36 
 37 OPP_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT'")
 38 WINNER_ID=$($PSQL "SELECT team_id from teams WHERE name='$WINNER'")
 39 
 40 echo "$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER    _ID,$OPP_ID,$WINNER_G,$OPPONENT_G);")"
 41 fi
 42 done
~                    
