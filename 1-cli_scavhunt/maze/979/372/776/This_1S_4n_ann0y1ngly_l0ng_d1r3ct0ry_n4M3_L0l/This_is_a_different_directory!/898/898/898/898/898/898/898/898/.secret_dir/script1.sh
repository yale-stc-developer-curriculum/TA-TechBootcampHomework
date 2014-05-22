if [ ! -d new ]
    then
        echo "Hey! Make that directory or this won't work!"
    else
    	touch new/rmdir.txt
    	cp ../../../../../../../../../../../../../../898/.stuff/script2.sh ./new
    	mkdir ./new/tada
    	mkdir ./new/tada2
    	mkdir ./new/tada2/stuff
    	echo "Now that you've made a directory with mkdir, let's remove a few directories! Try the commands\n\n$ rmdir tada\n\nand\n\n$ rmdir tada2\n\nand run the script in this directory to move on." > new/rmdir.txt
    	echo "Great! Now cd into the 'new' directory!"
fi
