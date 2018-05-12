#!/usr/bin/env ruby

class RockPaperScissors

  WINNING_MOVES = {
    "rock" => "scissors",
    "scissors" => "paper",
    "paper" => "rock"
  }

  EXIT = "exit"

  def initialize(p1, p2)
    @player_1 = p1
    @player_2 = p2
  end

  def usage
    puts "Play the game of rock-paper-scissors"
    puts "Each player should enter one of rock, paper or scissors when prompted."
    puts "Enter exit at any prompt to exit"
    puts "=====================================================================\n\n"
  end

  def user_prompt(player)
    print "#{player} make a move (one of rock, paper or scissors): "
  end

  def make_move(player)
    user_prompt(player)
    while move = gets.chomp.downcase
      return nil if move == EXIT
      return move if not WINNING_MOVES[move].nil?
      puts "#{move} is an invalid move. Try again."
      user_prompt(player)
    end
  end

  def play
    first_move = make_move(@player_1)
    return false if first_move.nil?
    second_move = make_move(@player_2)
    return false if second_move.nil?

    winner = case second_move
             when first_move
               "Game is a draw"
             when WINNING_MOVES[first_move]
               "#{@player_1} wins"
             else
               "#{@player_2} wins"
             end
    puts "#{winner}\n\n"
    true
  end
end

if __FILE__ == $0
  rps = RockPaperScissors.new("Player1", "Player2")
  rps.usage
  while rps.play
    # pass
  end
end
