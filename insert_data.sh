PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
 14 
 15 cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_G OPPONENT_G
 16 do
 17 
 18 if [[ $YEAR != year ]]
 19   then
 20 
 21 #check if the winner team already present in the table, if not, insert the team
 22 TEAM=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
 23 
 24 if [[ -z $TEAM ]]
 25    then
 26      echo "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
 27 fi
 28 
 29 #check if opponent name already present in the teams table
 30 TEAM2=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
 31 
 32 if [[ -z $TEAM2 ]]
 33    then
 34      echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
 35 fi
 36 
 37 fi
 38 done
