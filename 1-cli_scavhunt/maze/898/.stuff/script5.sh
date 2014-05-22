if [ ! -e box/stuff.txt ]
    then
        echo "'stuff.txt' isn't in the 'box' directory. Try again!"
    else
    	if [ ! -e mv.txt ]
    		then
		    	touch morestuff.txt
		    	cp ../../../../../../../../../../../../../../../../898/.stuff/mv.txt .
		    	echo "Bodacious! Now check out that new 'mv.txt' file."
		    else
		    	if [ -e morestuff.txt ] || [ ! -e box/morestuff.txt ]
		    		then
		    			echo "It looks like you didn't move 'morestuff.txt' into the 'box' directory. Try again!"
		    		else
		    			cp ../../../../../../../../../../../../../../../../898/.stuff/pipe.txt ./box
		    			cp ../../../../../../../../../../../../../../../../898/.stuff/script6.sh ./box
		    			cp ../../../../../../../../../../../../../../../../898/.stuff/script7.sh ./box
		    			rm box/stuff.txt box/morestuff.txt
		    			echo "Nice! Now you know how to copy and move things! Now check out what's in the box!"
		   		fi
		fi
fi