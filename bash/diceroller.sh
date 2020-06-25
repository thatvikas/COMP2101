#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "My First name is Vikas"
echo "
Rolling...
$(( RANDOM % 6 + 1)) First letter V
$(( RANDOM % 6 + 1)) Second Letter I
$(( RANDOM % 6 + 1)) Third Letter K
$(( RANDOM % 6 + 1)) Fourth Letter A
$(( RANDOM % 6 + 1)) Fifth Letter S
"
