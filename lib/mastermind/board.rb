module Mastermind
  class Board
    attr_accessor :slot_rows, :tries_left
    def initialize(input = {})
      @slot_rows = input.fetch(:slot_rows, default_row_number)
      @tries_left = (slot_rows.size)
    end

    def list_rows
    	slot_rows.each { |x| p x }
    end

    def current_board(guess, matches)
        slot_rows[0 - tries_left] = guess, "you got #{matches} correct"
        list_rows
    end

    private
 
    def default_row_number
      Array.new(10) { (Slots.new).row }
    end
  end
end