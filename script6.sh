#!/bin/bash

# Generate a random number between 1 and 100
random_number=$((RANDOM % 100 + 1))

# Counter for attempts
attempts=0
max_attempts=5

echo "Welcome! Guess a number between 1 and 100. You have $max_attempts attempts."

# Guessing loop
while [[ $attempts -lt $max_attempts ]]; do
  read -p "Your guess: " guess
  attempts=$((attempts + 1))

  if [[ $guess -eq $random_number ]]; then
    echo "Congratulations! You guessed the right number!"
    exit 0
  elif [[ $guess -lt $random_number ]]; then
    echo "Too low"
  else
    echo "Too high"
  fi

  echo "Attempts remaining: $((max_attempts - attempts))"
done

# If the user runs out of attempts
echo "Sorry, you've run out of attempts. The correct number was $random_number."
exit 1

