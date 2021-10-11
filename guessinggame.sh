function evaluate {
	if [[ $2 -gt $1 ]]
	then
		result="too high"
	else
		result="too low"
	fi
}


echo "How many files are in the current directory? Your guess:"
read n
echo "You've entered: $n"

correct=$(ls -l | wc -l)
while [[ $n -ne $correct ]]
do
	evaluate $correct $n
	echo "Your guess is $result."
	echo "Please guess again:"
	read n
	echo "You've entered $n"
done

echo "You guessed right! Congratulations!"
