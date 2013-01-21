#makes the grid.  Lets you get and set the contents of a cell.

class Board
	attr_reader :grid
	def initialize(grid = Array.new(11) { Array.new(11) { " " } })
		@grid = grid
		@grid[0] = [""] + ("A".."J").to_a
		@grid.each_with_index do |row, index|
			index == 0 ? row[0] = " " : row[0] = index
		end
	end

	def get_cell(y, x)
		grid[y][x]
	end

	def set_cell(y, x, value)
		grid[y][x] = value
	end

	def to_s
		grid.each do |row|
			puts row.join("  |  ")
		end
	end
end
