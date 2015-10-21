module Mastermind
	class Game
		attr_accessor :guess
		attr_reader :board, :mastermind_class, :player
		def initialize
			@player = Player.new
			@board = Board.new
			@mastermind_class = mastermind_class
			@guess = []
		end

		def current_player
			@player.name
		end

		def board_size
			board.slot_rows.size
		end

		def game_setup
			loop do
				p "Press 1 if Human vs Human. Press 2 if Human(Mastermind) vs Computer. Press 3 if Computer(Mastermind) vs Human."
				selection = gets.chomp.to_i
				if selection == 1
					@mastermind_class = HumanPlayer.new("Player 2")
					@player = Player.new
				elsif selection == 2
					@mastermind_class = HumanPlayer.new("Player 1")
					@player = ComputerPlayer.new
				elsif selection == 3
					@player = Player.new
					@mastermind_class = ComputerPlayer.new
				else
					p "invalid selection"
				end
				play
				break
			end
		end

		def make_guess
		loop do
			p "Type in #{board_size} numbers between 1 and 5."
				row_input = gets.chomp
				row_guess = row_input.split(",").map(&:to_i).take(board_size)
				if row_guess.size == board_size && row_guess.all? { |x| x > 0 && x < 6 }
					@guess = row_guess
					break
				else
					p "Please give at least #{board_size} numbers between 1 and 5."
				end
			end
		end

		def turn
			board.current_board(guess, compare_slots)
			board.tries_left -= 1	
			p "you got #{compare_slots} correct. #{board.tries_left} tries left."		
		end

		def compare_slots
			guess.number_matches(mastermind_class.chosen_slots)
		end

		def play
			loop do
				until game_end == true
					make_guess
					turn
				end
				break
			end
			game_over
		end

    	def game_end
   			if win?
   				true
   			elsif lose? 
    			true
    		else
    			false
    		end
    	end

    	def game_over
    		p "yay" if win?
    		p "no" if lose?
    		game_reset
    		game_setup
    	end

    	def game_reset
    		guess = []
    		board.tries_left = slot.rows.size
    	end

		def win?
			guess == mastermind_class.chosen_slots
		end

		def lose?
			board.tries_left == 0
		end
	end
end