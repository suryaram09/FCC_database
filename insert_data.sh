#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi
# Do not change code above this line. Use the PSQL variable above to query your database.
($PSQL "TRUNCATE games,teams")
U=1
P=1
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    echo $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
    ($PSQL "INSERT INTO teams(name, team_id) VALUES('$WINNER', $U)") || U=$((U-1))
    U=$((U+1))
    ($PSQL "INSERT INTO teams(name, team_id) VALUES('$OPPONENT', $U)") || U=$((U-1))
    U=$((U+1))
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    ($PSQL "INSERT INTO games(year,round,opponent_goals,winner_goals,winner_id,opponent_id,game_id) VALUES($YEAR,'$ROUND',$OPPONENT_GOALS,$WINNER_GOALS,$WINNER_ID,$OPPONENT_ID,$P)")
    P=$((P+1))
  fi
done
