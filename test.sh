#!/bin/bash

function draw() {
    winner=`echo -e "$1\n$2\nexit" | ruby rock_paper_scissors.rb | grep draw |wc -l`
    if ! [[ "${winner//[[:space:]]/}" == "1" ]]; then
	echo "Both moves of $1 did not finish in a draw"
	exit 1
    fi
    echo "$1 for both players is a draw"
}

function winner() {
    winner=`echo -e "$1\n$2\nexit" | ruby rock_paper_scissors.rb | grep "$3 wins" |wc -l`
    if ! [[ "${winner//[[:space:]]/}" == "1" ]]; then
	echo "$3 did not win for $1 against $2"
	exit 1
    fi
    echo "$3 wins for $1 against $2"

}

draw "rock" "rock"
draw "paper" "paper"
draw "scissors" "scissors"

winner "rock" "scissors" 'Player1'
winner "paper" "rock" 'Player1'
winner "scissors" "paper" 'Player1'

winner "rock" "paper" 'Player2'
winner "paper" "scissors" 'Player2'
winner "scissors" "rock" 'Player2'

echo "All tests passed"
exit 0
