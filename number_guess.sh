#!/bin/bash
echo "Enter your username:"
read USER_NAME
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USER_NAME';")
if [[ -z $USER_ID ]]
then
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(user_name) values('$USER_NAME');")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USER_NAME';")
  echo "Welcome, $USER_NAME! It looks like this is your first time here."
else
  USER_INFO=$($PSQL "SELECT user_name, MIN(score), COUNT(user_id) FROM users INNER JOIN games USING (user_id) GROUP BY user_id HAVING user_id = '$USER_ID';")
  echo "$USER_INFO" | while IFS="|" read USERNAME BEST_GAME GAMES_PLAYED
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

PLAY() {
  if [[ -z $1 ]]
  then
    echo "Guess the secret number between 1 and 1000:"
    RANDOM_NUMBER=$(( $RANDOM % 1000 + 1))
    GUESS_COUNT=0
  else
    echo $1
  fi
  
  read USER_NUMBER
  if [[ ! $USER_NUMBER =~ ^[0-9]+$ ]]
  then
    PLAY "That is not an integer, guess again:"
  else
      (( GUESS_COUNT++ ))
    if [[ $USER_NUMBER -eq $RANDOM_NUMBER ]]
    then
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(score, user_id) values($GUESS_COUNT, $USER_ID);")
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
    else
      if [[ $USER_NUMBER -lt $RANDOM_NUMBER ]]
      then
        PLAY "It's higher than that, guess again:"
      else
        PLAY "It's lower than that, guess again:"
      fi
    fi
  fi
}
PLAY