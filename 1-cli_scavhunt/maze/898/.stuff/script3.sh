if [ ! -e file.txt ]
    then
        echo "Hey! Make that file or this won't work!"
    else
    	if [ -e ../help.txt ]
    		then
	    		rm ../help.txt
	    fi
    	rm ../rmdir.txt
    	rm ../script2.sh
    	cp ../../../../../../../../../../../../../../../../898/.stuff/script4.sh ./..
    	cp ../../../../../../../../../../../../../../../../898/.stuff/rm.txt ./..
    	echo "Awesome! Now (plot twist!) cd BACK into the parent directory for further instructions. If you don't remember how to do this, feel free to ask one of the TAs for a recap!"
fi