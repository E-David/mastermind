module Mastermind
	class HumanPlayer < Player
		attr_reader :chosen_slots
		def initialize(name = "Player 2")
			@name = name
			@slots = Slots.new
			@chosen_slots = [1,1,1,1,1,1,1,1,1,1]
		end

	end
end