#!/bin/bash
# mySetup.sh takes no argument
# Example invocation: ./mySetup.sh

# Set frequency of BB
sudo cpufreq-set -f 600MHz
# Display information on current state
cpufreq-info

# Create variable and assign value
location=/home/debian
# Display the value of the variable
echo
echo "The value of the location variable is" $location

# Create variable that gets the number of items in the current working directory
items=$(ls . |wc -l)
# Display the number of items in your current working directory
echo "The number of items in the current working directory is" $items

# Add directory to the variable PATH
PATH=$PATH:$HOME/phamhw4/
# Export PATH to make it an enviroment variable
export PATH

# Write new enviroment variable PATH to newPathValue.txt
echo $PATH > newPathValue.txt

