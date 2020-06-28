#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
myname=$USER
hostname=$(hostname)

####time and day ############
day=$(date +%A)          ### %A is used for weekday

time=$(date +%I:%M\ %p)   ######## %I is used for hour and %M is used for minutes and %p  is used for AM:PM

#using testing statement
[ $day == "Monday" ] && title="Work time"
[ $day == "tuesday" ] && title="Vikas is on Chill"
[ $day == "Wednesday" ] && title="Vikas is rude now"
[ $day == "Thrusday" ] && title="Let me learn something new"
[ $day == "Friday" ] && title="Movie time"
[ $day == "Saturday" ] && title="Game time"
[ $day == "Sunday" ] && title='rest time bro'



###############
# Main        #
###############
#assigning the putput into a variable
toDisplay="Welcome to planet $hostname, $title $myname! and Today is $day and time is $time"

#using cowsay command to display the output
cowsay $toDisplay
