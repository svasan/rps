#!/bin/bash


for move in "rock" "paper" "scissors"; do
    winner=`echo -e "$move\n$move\nexit" | ruby rock_paper_scissors.rb | grep draw |wc -l`
    if ! [[ $winner == 1 ]]; then
	echo "Both moves of $move did not finish in a draw"
	exit 1
    fi
    echo "$move for both players is a draw"
done


function winner() {
    winner=`echo -e "$1\n$2\nexit" | ruby rock_paper_scissors.rb | grep "$3 wins" |wc -l`
    if ! [[ $winner == 1 ]]; then
	echo "$3 did not win for $1 against $2"
	exit 1
    fi
    echo "$3 wins for $1 against $2"

}

winner "rock" "scissors" 'Player1'
winner "paper" "rock" 'Player1'
winner "scissors" "paper" 'Player1'

winner "rock" "paper" 'Player2'
winner "paper" "scissors" 'Player2'
winner "scissors" "rock" 'Player2'

echo "All tests passed"
exit 0
