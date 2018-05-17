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

## Running tests locally:

In a bash terminal from the top of the repo do:

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

## Running tests on docker

Ubuntu 14.04 (oldest LTS as of May 2018)

```
$ docker pull ubuntu:14.04
14.04: Pulling from library/ubuntu
....
Status: Downloaded newer image for ubuntu:14.04


$ docker run -it -v`pwd`:`pwd` -w`pwd` ubuntu:14.04 /bin/bash -c -- 'apt-get update && apt-get -y install ruby && ./test.sh'
Get:1 http://security.ubuntu.com trusty-security InRelease [65.9 kB]
....
Fetched 21.3 MB in 24s (879 kB/s)
Reading package lists... Done
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following extra packages will be installed:
  ca-certificates libruby1.9.1 libyaml-0-2 openssl ruby1.9.1
....
Running hooks in /etc/ca-certificates/update.d....done.
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

Debian wheezy (oldest LTS as of May 2018)

```
$ docker pull debian:wheezy
....
Status: Downloaded newer image for debian:wheezy


$ docker run -it -v`pwd`:`pwd` -w`pwd` debian:wheezy /bin/bash -c -- 'apt-get update && apt-get -y install ruby && ./test.sh'
Get:1 http://security.debian.org wheezy/updates Release.gpg [1601 B]
....
Fetched 8787 kB in 2s (3147 kB/s)
Reading package lists... Done
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following extra packages will be installed:
  libffi5 libgdbm3 libgpm2 libncursesw5 libruby1.9.1 libyaml-0-2 ruby1.9.1
....
Setting up ruby (1:1.9.3) ...
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
