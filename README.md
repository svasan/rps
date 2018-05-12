# Play the game

Run game interactively as:

```
$ ruby rock_paper_scissors.rb
Play the game of rock-paper-scissors
Each player should enter one of rock, paper or scissors when prompted.
Enter exit at any prompt to exit
=====================================================================

Player1 make a move (one of rock, paper or scissors): rock
Player2 make a move (one of rock, paper or scissors): paper
Player2 wins

Player1 make a move (one of rock, paper or scissors): rock
Player2 make a move (one of rock, paper or scissors): rock
Game is a draw

Player1 make a move (one of rock, paper or scissors): exit
$
```

# Tests

Run tests as:

```
$ ./test.sh
rock for both players is a draw
paper for both players is a draw
scissors for both players is a draw
Player1 wins for rock against scissors
Player1 wins for paper against rock
Player1 wins for scissors against paper
Player2 wins for rock against paper
Player2 wins for paper against scissors
Player2 wins for scissors against rock
All tests passed
```
