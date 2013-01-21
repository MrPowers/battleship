class Ship
	attr_reader :type, :size, :positions
	def initialize(type, size, positions = [])
		@type = type
		@size = size
		@positions = positions #[[2, 3], [2, 4], [2, 5]]
		@positions = Hash[positions.zip([:unhit] * positions.length)]
	end
end
#[[3, 3], [3, 4], [3, 5], [3, 6], [3, 7]]