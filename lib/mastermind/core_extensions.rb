class Array
	def rand_array
		self.map { |x| x = rand(1..5) }
	end
end