require_relative "ship.rb"
require_relative "battleship.rb"
require_relative "board.rb"

class Main
	def go
		board = Board.new
		battleship = Battleship.new
		ships = []
		game_ships = [["Aircraft carrier", 5]]#, ["Battleship", 4], ["Submarine", 3], ["Destroyer", 3], ["Patrol Boat", 2]]
		game_ships.each do |ship, size|
			puts "Where would you like to put your #{ship} (enter a #{size} element array of positions)"
			positions = eval(gets.chomp)
			this_ship = Ship.new(ship, size, positions)
			ships.push(this_ship)
		end

		battleship.place_ships_on_board(board, ships)
		p board

		5.times do
			puts "Enter a move"
			move = eval(gets.chomp)
			battleship.turn(move, ships, board)
			battleship.place_ships_on_board(board, ships)
			p board
		end

		
		
	end
end

m = Main.new
m.go

# [[1, 1], [1, 2], [1, 3], [1, 4], [1, 5]]
# [["B", 1], ["B", 2], ["B", 3], ["B", 4], ["B", 5]]
# [["C", 1], ["C", 2], ["C", 3], ["C", 4]]
# [["D", 1], ["D", 2], ["D", 3]]
# [["E", 1], ["E", 2], ["E", 3]]
# [["F", 1], ["F", 2]]