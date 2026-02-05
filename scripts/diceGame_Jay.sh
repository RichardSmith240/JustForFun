rollDice () {
	local n=$1
	local count=0
	local roll=0
	while [[ $count -ne $n ]]; do
		read -p "Press enter" confirm
		if [[ -z "$confirm" ]]; then
			roll=$(((RANDOM % 6) +1))
			((count++))
			echo "Dice $count: $roll" 
		fi
	done
}
clear
echo "Welcome to Jay's Dice Game"
read -p "Would you like to play? [Y/n/h] " confirm

if [[ "$confirm" == "y" || -z "$confirm" ]]; then
	clear
	echo "To begin, roll the 6 dice:"
	roll=6
	rollDice "$roll"
	echo "Now that rolling is over, write down the numbers you'd like to keep."
	continue="y"
	while [[ "$continue" != "n" ]] do
		read -p "Would you like to continue rolling? [Y/n] " continue
		clear
		if [[ "$continue" == "y" || -z "$confirm" ]]; then
			read -p "How many dice would you like to re-roll: " roll
			rollDice "$roll"
		fi
	done
elif [[ "$confirm" == "h" ]]; then
	echo "help not available idiot"
	echo "figure it out"
elif [[ "$confirm" == "n" ]]; then
	exit 0
else
	echo "im sorry. please run again"
	exit 0
fi
