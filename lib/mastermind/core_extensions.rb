class Array
	def rand_array
		self.map! { |x| x = rand(1..5) }
	end

	def number_matches(array)
		matches = []
		self.each_with_index { |ele, index| matches << ele if self[index] == array[index] }
		matches.size
	end
end