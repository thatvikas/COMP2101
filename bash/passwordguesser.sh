#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)
echo "########task1############"
input="please try to guess the password in 5 tries: "
read -p "$input" userinput

referenceString="password"

#using if and else statement

if [ $userinput = $referenceString ]; then
   echo "Welcome sir, What can i do for you?"
else
  echo "please try again and you have left 4 tries"
  read -p "$input" userinput
  if [ $userinput = $referenceString ]; then
     echo "oh yes, you entered the correct password"
  else
    echo "please try again and you have left 3 tries"
    read -p "$input" userinput
    if [ $userinput = $referenceString ]; then
       echo "oh yes, you entered the correct password"
    else
      echo "please try again and you have left 2 tries"
      read -p "$input" userinput
      if [ $userinput = $referenceString ]; then
         echo "oh yes, you entered the correct password"
      else
        echo "please try again and you have left 1 tries"
        read -p "$input" userinput
        if [ $userinput = $referenceString ]; then
           echo "oh yes, you entered the correct password"
        else
          echo "Warning: Somebody is trying to compromise the security"
        fi
      fi
    fi
  fi
fi
