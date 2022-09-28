#!/bin/bash

# simpleAdmin.sh takes 4 arguments
# Example invocation: ./simpleAdmin.sh dir1 dir2 message.txt linkName

# Create a current directory
echo "Creating a directory named" $1 ".......done!"
mkdir ./$1 

# Create a directory inside the directory created in item 1
echo "Creating a directory named" $2 "under" $1 ".......done!" 
mkdir ./$1/$2

# Create a text file
echo "Creating a text file named" $3 ".......done!"
# Write down Hello World and save it in the directory created in item 2.
echo "Hello World!" > ./$1/$2/$3
echo "Moving " $3 "to " $1 "/" $2 ".......done!"

# Create a link from the working directory 
echo "Creating a link from working directory to" $2 ".......done!"
ln -s ./$1/$2 ./$4
