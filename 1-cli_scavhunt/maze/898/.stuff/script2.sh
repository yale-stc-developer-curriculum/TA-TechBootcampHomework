if [ -d tada ]
    then
        touch help.txt
    	echo "Uh-oh.\n\nIs that tada2 directory giving you trouble?\n\nThat's because it's not empty! In order to remove a directory and all of its contents, try using the command\n\n$ rm tada2\n\nand you'll quickly see... that that doesn't work either! But with rm, you can specify the recursive flag '-r' to delete all of the specified directory's contents too. So use the command\n\n$ rm -r tada2\n\nand that should do the trick! Once you've done that, run the script!" > help.txt
        echo "Something went wrong! Check out the help.txt file I just put in this directory!"
    else
    	echo "Great! You're getting good! New cd into the next directory!"
    	mkdir next
    	cp ../../../../../../../../../../../../../../../898/.stuff/script3.sh ./next
    	cp ../../../../../../../../../../../../../../../898/.stuff/touch.txt ./next
fi