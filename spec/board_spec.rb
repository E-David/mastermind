require "spec_helper"
module Mastermind
	describe Board do

		it "sets the grid with three rows by default" do
  			board = Board.new
  			expect(board.slots.size).to eq(12)
		end

		context "#slots" do
  			it "returns the slots" do
    			board = Board.new(slots: "blah")
    			expect(board.slots).to eq "blah"
  			end
  		end
	end
end

