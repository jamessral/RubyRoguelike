# frozen_string_literal: true

class Roguelike
  attr_reader :should_exit
  attr_accessor :score

  def initialize
    @should_exit = false
    @score = 0
  end

  def quit_game!
    @should_exit = true
  end

  def run
    puts "========="
    puts "Welcome to the Ruby Roguelike"
    puts "========="
    4.times { puts "" }

    loop do
      break if should_exit

      print ">> "
      command = gets.chomp
      eval_command command
    end
  end

  def eval_command command
    c = command.downcase
    case c
    when "exit"
      quit_game!
    when "quit"
      quit_game!
    else
      puts "I don't know how to #{c}"
    end
  end
end
