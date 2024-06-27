#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"




GET_USERNAME () {
  echo Enter your username:
  read USERNAME_INPUT

  USERNAME=$($PSQL "SELECT username FROM user_info WHERE username='$USERNAME_INPUT';")
  if [[ -z $USERNAME ]]
  then
    echo "Welcome, $USERNAME_INPUT! It looks like this is your first time here."
    INSERT_USER=$($PSQL "INSERT INTO user_info(username) VALUES('$USERNAME_INPUT');")
    MAIN_GAME $USERNAME_INPUT $((1 + $RANDOM % 1000))
  else 
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM user_info WHERE username='$USERNAME';")
    if [[ -z $GAMES_PLAYED ]]
    then
      GAMES_PLAYED=0
    fi

    BEST_GAME=$($PSQL "SELECT best_game FROM user_info WHERE username='$USERNAME'")
    if [[ -z $BEST_GAME ]]
    then 
      BEST_GAME=0
    fi

    echo Welcome back, $USERNAME_INPUT! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
    MAIN_GAME $USERNAME $((1 + $RANDOM % 1000))
  fi


}

MAIN_GAME () {
  USERNAME=$1
  NUMBER=$2
  TURN_COUNT=1

  echo $NUMBER
  echo Guess the secret number between 1 and 1000:

  while [[ $GUESS != $NUMBER ]]
  do 
    read GUESS
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo That is not an integer, guess again:
    elif [[ $GUESS > $NUMBER ]]
    then
      TURN_COUNT=$((TURN_COUNT + 1))
      echo It\'s lower than that, guess again:
    elif [[ $GUESS < $NUMBER ]]
    then
      TURN_COUNT=$((TURN_COUNT + 1))
      echo It\'s higher than that, guess again:
    fi
  done

  echo "You guessed it in $TURN_COUNT tries. The secret number was $NUMBER. Nice job!"
  UPDATE_PLAYER $USERNAME $TURN_COUNT
}

UPDATE_PLAYER () {
  USERNAME=$1
  TURNS=$2
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM user_info WHERE username='$USERNAME';")
  GAMES_PLAYED=$((GAMES_PLAYED + 1))
  UPDATE_GAMES_PLAYED=$($PSQL "UPDATE user_info SET games_played=$GAMES_PLAYED WHERE username='$USERNAME';")
  BEST_GAME=$($PSQL "SELECT best_game FROM user_info WHERE username='$USERNAME';")
  if [[ -z $BEST_GAME ]]
  then
    NEW_BEST=$TURNS
  elif [[ $TURNS < $BEST_GAME ]]
  then
    NEW_BEST=$TURNS
  else
   :
  fi

  if [[ $NEW_BEST ]]
  then
    INSERT_NEW_BEST=$($PSQL "UPDATE user_info SET best_game=$NEW_BEST WHERE username='$USERNAME';")
  fi
}

GET_USERNAME