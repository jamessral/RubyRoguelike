# frozen_string_literal: true

module Ansi
  def self.clear_screen
    "\e\[2J"
  end
end
