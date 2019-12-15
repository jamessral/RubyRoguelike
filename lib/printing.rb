# frozen_string_literal: true

require "io/console"
require_relative "./ansi"

module Printing
  def self.banner_line char
    terminal_width.times { print char }
    puts ""
  end

  def self.center_text(text)
    text_len = text.length
    spaces = terminal_width - text_len

    line_text = ""
    (spaces / 2).times { line_text += " " }
    line_text += text
    (spaces / 2).times { line_text += " " }
    line_text += "\n"

    print line_text
  end

  def self.terminal_height
    rows, _cols = $stdout.winsize
    rows
  end

  def self.terminal_width
    _ros, cols = $stdout.winsize
    cols
  end

  def self.print_prompt prompt = ">>"
    print "#{prompt} "
  end

  def self.clear_screen
    print Ansi.clear_screen
  end

  def self.vertical_padding row_offset: 0
    newlines = ""
    (terminal_height - row_offset).times { newlines += "\n" }
    print newlines
  end
end
