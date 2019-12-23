# frozen_string_literal: true

module Ansi
  def self.clear_screen
    "\e\[2J"
  end

  def self.cursor_home
    "\e\[H"
  end

  def self.set_cursor_position(row: 0, col: 0)
    "\e\[#{row};#{col}H"
  end

  def self.cursor_up(amount: 1)
    "\e\[#{amount}A"
  end

  def self.cursor_down(amount: 1)
    "\e\[#{amount}B"
  end

  def self.cursor_forward(amount: 1)
    "\e\[#{amount}C"
  end

  def self.cursor_backward(amount: 1)
    "\e\[#{amount}D"
  end

  def self.save_cursor
    "\e\[s"
  end

  def self.restore_cursor
    "\e\[u"
  end

  def self.save_cursor_and_attrs
    "\e\7"
  end

  def self.restore_cursor_and_attrs
    "\e\8"
  end
end
