module Mastermind
	class ComputerPlayer < Player
		attr_reader :chosen_slots
		def initialize(name = "Computer", slots = Slots.new)
			@name = name
			@chosen_slots = slots.row.rand_array
		end

		def if_mastermind
			@chosen_slots = slots.row.rand_array
		end

		def if_player
			@chosen_slots = slots.row.rand_array
		end
	end
end

