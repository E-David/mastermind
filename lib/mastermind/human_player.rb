module Mastermind
	class HumanPlayer < Player
		attr_reader :chosen_slots
		def initialize(name = "Player 2")
			@name = name
			@slots = Slots.new
			@chosen_slots = chosen_slots
		end

		def choose_slots(board_size)
			loop do
				p "Mastermind, please type in #{board_size} numbers between 1 and 5."
				row_input = gets.chomp
				@chosen_slots = row_input.split(",").map(&:to_i).take(board_size)
				if chosen_slots.size == board_size && chosen_slots.all? { |x| x > 0 && x < 6 }
					break
				else
					p "Please give at least #{board_size} numbers between 1 and 5."
				end
			end
		end

	end
end