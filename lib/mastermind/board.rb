module Mastermind
  class Board
    attr_reader :slots
    def initialize(input = {})
      @slots = input.fetch(:slots, default_slots)
    end
 
    private
 
    def default_slots
      Array.new(12) { Cell.new }
    end
  end
end