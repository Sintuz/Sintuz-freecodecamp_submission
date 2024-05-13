#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$((1 + $RANDOM % 1000))
echo "Enter your username:"
read USERNAME
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
if [[ -z $USER_ID ]]; then
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo $USER_ID
  GAMES_PLAYED=$($PSQL "SELECT COUNT(guesses) FROM users LEFT JOIN games USING(user_id) WHERE user_id=$USER_ID GROUP BY user_id")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE user_id=$USER_ID GROUP BY user_id")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
echo "Guess the secret number between 1 and 1000:"
read GUESS

GUESSES=1
while [[ $NUMBER -ne $GUESS ]]; do
  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    read GUESS
  else
    if [[ $NUMBER -lt $GUESS ]]; then
      echo "It's lower than that, guess again:"
      read GUESS
    else
      if [[ $NUMBER -gt $GUESS ]]; then
        echo "It's higher than that, guess again:"
        read GUESS
      fi
    fi
  fi
  (( GUESSES++ ))
done

INSERT_GAME_RESULT=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $GUESSES)")

echo "You guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"