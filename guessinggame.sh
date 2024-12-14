#!/usr/bin/env bash

# A function to check the user's guess
function guess_files {
  local file_count=$(ls -1 | wc -l)  # Count files in the current directory
  local user_guess=0

  echo "How many files are in the current directory? Make a guess!"

  while [[ $user_guess -ne $file_count ]]; do
    read -p "Enter your guess: " user_guess

    if [[ $user_guess -lt $file_count ]]; then
      echo "Too low! Try again."
    elif [[ $user_guess -gt $file_count ]]; then
      echo "Too high! Try again."
    fi
  done

  echo "Congratulations! $user_guess is the correct number of files."
}

# Run the game
guess_files
