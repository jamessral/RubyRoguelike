# frozen_string_literal: true

require_relative "./printing"

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
    Printing.clear_screen
    Printing.banner_line("=")
    Printing.center_text("Welcome to Ruby Roguelike")
    Printing.banner_line("=")
    Printing.vertical_padding(row_offset: 4)

    loop do
      break if should_exit

      Printing.print_prompt
      command = gets.chomp
      eval_command(command)
    end
  end

  def eval_command(command)
    c = command.downcase
    case c
    when "exit"
      quit_game!
    when "quit"
      quit_game!
    when "clear"
      Printing.clear_screen
    when "cls"
      Printing.clear_screen
    else
      puts "I don't know how to #{c}"
    end
  end
end
