#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.


PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
echo $($PSQL "TRUNCATE games,teams")

cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_G OPPONENT_G
do

if [[ $YEAR != year ]]
  then

#check if the winner team already present in the table, if not, insert the team
TEAM=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")

if [[ -z $TEAM ]]
   then
     echo "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"

fi
#check if opponent name already present in the teams table
TEAM2=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")

if [[ -z $TEAM2 ]]
   then
     echo "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
fi

#Insert table games data
#Get the name of the team and then associate the winner and opponent id accordingly

OPP_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT'")
WINNER_ID=$($PSQL "SELECT team_id from teams WHERE name='$WINNER'")

echo "$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$OPP_ID,$WINNER_ID,$WINNER_G,$OPPONENT_G);")"
fi
done
