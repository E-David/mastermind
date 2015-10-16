module Mastermind
  class Board
  	attr_accessor :tries_left
    attr_reader :slot_rows
    def initialize(input = {})
      @slot_rows = input.fetch(:slot_rows, default_row_number)
      @tries_left = (slot_rows.size - 1)
    end
    
    def get_row(x)
    	slot_rows[x]
    end

    def list_rows
    	slot_rows.each { |x| p x }
    	@tries_left -= 1
    end

    def rows_left
    	slot_rows[0 - (tries_left)] = "NOOOOOOO"
    end

    def results
    	return "yay" if lose?
    	false
    end

    def lose?
    	@tries_left == 7
    end

    private
 
    def default_row_number
      Array.new(10) { (Slots.new).row }
    end
  end
end