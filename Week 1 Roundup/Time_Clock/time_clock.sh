#!/bin/bash

#Revised Time Clock program (with complexity) inspired by class Time Clock example
#Goal: Create Employee timecard that adds context, checks for integrity, and sends to a text file

printf "Time Clock is running (Type 'stop' to exit)....\n"
declare -a EmployeeNames                               #Declare array
timestamp=$(date +"%m-%d-%y %r")                       #Declare timestamp variable to hold date and time (in 12 hour format)
counter="false"                                        #Set counter for while loop check

while [ $counter == "false" ];                         #Conditional based on counter set to false
  do
      read -p $'\tEnter Employee Name: ' input         #Read user input and store in $input variable
      if [[ $input =~ ['!@#$%^&*()_+/*-<>?'] ]]; then  #Check to see if input has special characters
        echo "Invalid name; please try again"          #If yes: Ask for input again
      else                          
         EmployeeNames+=("$input")                     #If no: add input to EmployeeNames array
         if [[ ${input^^} == 'STOP' ]]; then           #Check to see if input spells 'stop' (in some fashion)
            $counter = "true"                          #If yes: set counter to 'true' to stop loop
            unset 'EmployeeNames[-1]'                  #If yes: Remove 'stop' from array as it is only an exit condition
            break                                      #If yes: Break out of the loop
         fi
      fi
   done

for name in "${EmployeeNames[@]}"; do                  #For each index in array add context and send to text file
    echo "Employee Name: $name, Clock-In-Time: $timestamp" >> clock_sheet.txt
done
