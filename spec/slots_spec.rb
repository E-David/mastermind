require "spec_helper"
module Mastermind
	describe Slots do

		context "#initialize" do
			it "is initialized with a row of 12 slots of 0 value by default" do
				slot = Slots.new
				expect(slot.row).to eq [0,0,0,0,0,0,0,0,0,0,0,0]
			end

			it "can be initialized with a different value and slot number" do
				slot = Slots.new(2, "value")
				expect(slot.value).to eq "value"
				expect(slot.slots).to eq 2
				expect(slot.row).to eq ["value", "value"]
			end
		end
	end	
end