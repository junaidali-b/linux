#!/bin/bash

#Renaming the terminal tab
echo -ne "\033]30;Meow Time\007"

#Clearing terminal
clear

#Hiding cursor
printf "\e[?25l"

#Generating ascii art
ascii-image-converter ~/Projects/Linux/Resources/BSH2.jpg --color -bC
echo "This is the time right meoww :3"

#Loop to output time multiple times every second
while true
do
 date | tr -d '\n'
 tput cr
done

# Show cursor again
printf "\e[?25h"
