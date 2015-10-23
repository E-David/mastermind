require "spec_helper.rb"

describe Array do
	context "#rand_array" do
		it "randomizes an array between 1 and 5" do
			array = [0,0,0]
			expect((array.rand_array).select { |x| x == 0 }.size).to eq 0
		end
	end

	context "#number_matches" do
		it "compares two arrays and returns identical elements in same index" do
			array = [0,0,1]
			array2 = [0,3,1]
			expect(array.number_matches(array2)).to eq 2
		end
	end
end