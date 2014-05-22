read output

temp=$(grep "needle" haystack.txt)

if [ ! "$output" = "4" ]
    then
        echo "Incorrect number!"
    else
    	echo "Woohoo! You're done!"
    	say "Woohoo!"
fi