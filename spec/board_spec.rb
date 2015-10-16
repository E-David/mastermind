require "spec_helper"
module Mastermind
	describe Board do

		it "displays 10 rows by default" do
  			board = Board.new
  			expect(board.slot_rows.size).to eq(10)
		end

		context "#slot_rows" do
  			it "returns the slots" do
    			board = Board.new(slot_rows: "blah")
    			expect(board.slot_rows).to eq "blah"
  			end
  		end

  		context "#tries_left" do
  			it "returns tries left" do
  				board = Board.new
  				expect(board.tries_left).to eq 9
  			end
  		end

  		context "#get_row" do
  			it "gets specified slots based on given value" do
  				slots = [["","",""],["","",""],["","this",""]]
  				board = Board.new(slot_rows: slots)
  				expect(board.get_row(2)[1]).to eq "this"
  			end
  		end

  		context "#list_rows" do
  			it "lists all rows" do
  				board = Board.new
  				expect(board.list_rows.size).to eq 10
  			end
  		end

  		context "#game_over" do
  			it "returns :winner if win? == true" do
  				board = Board.new
  				allow(board).to receive_messages(:win? => true)
  				expect(board.game_over).to eq :winner
  			end

  			it "returns :loser if win? = false and lose? == true" do
  				board = Board.new
  				allow(board).to receive_messages(:win? => false, :lose? => true)
  				expect(board.game_over).to eq :loser
  			end

  			it "returns false if win? == false and lose? == false" do
   				board = Board.new
  				allow(board).to receive_messages(:win? => false, :lose? => false)
  				expect(board.game_over).to eq false
  			end
  		end
	end
end

