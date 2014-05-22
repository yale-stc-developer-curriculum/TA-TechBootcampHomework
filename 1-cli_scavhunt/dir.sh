#!/bin/bash

# a bash script to generate a random directory tree; 4 folders on each level; 4 levels deep
# each directory created has a .lolcats and pass.txt file
# approx half the directories created are hidden!!!
function random  #randomly returns a number between 0 and 1000 for our directory names
{
	result=$(jot -r 1  0 1000)   
}

function yesno  #randomly returns true / false
{
	return $(jot -r 1  0 1)  # either 0 or 1
}

function generate {
	for i in `seq 1 4`;  #for loop
	do
		random   # call random ; updates $result

		if yesno; then    # approx half the time, this will make our directories hidden
			result=".$result"
		fi

		mkdir $result  #make the directory and cd into it
		echo $result
		cd $result

		pass1=$(openssl rand -base64 6)   # a random password
		echo $pass1 >> pass.txt    #create pass.txt

		pass2=$(openssl rand -base64 6)
		echo $pass2 >> .lolcats     #create .lolcats

		if [ "$num" != "4" ];    # recursive base case
		then
			((num = num + 1))    
			generate $num       #recursive call
			((num = num - 1))
		fi
		cd ..   #head up one
	done
}

generate "0"    #and call our procedure


