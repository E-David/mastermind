require "spec_helper"
module Mastermind
	describe Player do 
	
		context "#initialize" do
			it "is initialized with a default name of Player 1" do
				player = Player.new
				expect(player.name).to eq "Player 1"
			end

			it "will change player name if given a value" do
				player = Player.new("fred")
				expect(player.name).to eq "fred"
			end
		end
	end
end