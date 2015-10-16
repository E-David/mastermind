require "spec_helper.rb"

describe Array do
	context "#rand_array" do
		it "randomizes an array between 1 and 5" do
			array = [0,0,0]
			expect((array.rand_array).select { |x| x == 0 }.size).to eq 0
		end
	end
end