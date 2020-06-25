#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

echo "######task 1######"
range=6     #range is 6
bias=1       #bias or the minimum value is 1

# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
die1=$(( RANDOM % range + bias))
die2=$(( RANDOM % range + bias ))
# display the results
echo "Rolled $die1, $die2"

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice
echo "######task 2###########"
#  display a summary of what was rolled, and what the results of your arithmetic were
sum=$(($die1 + $die2))        #adding the die1 and die 2
echo "the rolled dice sum is $sum"
average=$(($sum/2))      #getting average
echo "the average of rolled dice is $average"
