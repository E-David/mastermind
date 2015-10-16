module Mastermind
  class Board
    attr_reader :slot_rows, :tries_left
    def initialize(input = {})
      @slot_rows = input.fetch(:slot_rows, default_row_number)
      @tries_left = (slot_rows.size - 1)
    end
    
    def get_row(x)
    	slot_rows[x]
    end

    def list_rows
    	slot_rows.each { |x| p x }
    end

    def rows_left
    	slot_rows[0 - (tries_left)] = "NOOOOOOO"
    end

    def game_over
    	return :winner if win?
    	return :loser if lose?
    	false
    end

    private
 
    def default_row_number
      Array.new(10) { (Slots.new).row }
    end
  end
end