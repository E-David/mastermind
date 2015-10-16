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

  		context "#get_slot" do
  			it "gets specified slots based on given value" do
  				slots = [["","",""],["","",""],["","this",""]]
  				board = Board.new(slot_rows: slots)
  				expect(board.get_row(2)[1]).to eq "this"
  			end
  		end
	end
end

