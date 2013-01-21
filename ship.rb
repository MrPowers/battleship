class Ship
	attr_reader :type, :size, :positions
	def initialize(type, size, positions = [])
		@type = type
		@size = size
		@positions = positions #[[2, 3], [2, 4], [2, 5]]
		@positions = Hash[positions.zip(["S"] * positions.length)]
	end

	def get_status(position)
		self.positions[position]
	end

	def hit(position)
		self.positions[position] = "H"
	end

	def sunk?
		self.positions.values.all? {|x| x == "H" }
	end
end
#[[3, 3], [3, 4], [3, 5], [3, 6], [3, 7]]