class Battleship
  def move_to_coordinate(move) #["A", 9] => [9, 1]
    column_to_number = Hash[("A".."J").to_a.zip((1..10).to_a)]
    [move[1], column_to_number[move[0]]]
  end

  def coordinate_to_move(coordinate) #[9, 1] => ["A", 9]
    number_to_column = Hash[(1..10).to_a.zip(("A".."J").to_a)]
    [number_to_column[coordinate[1]], coordinate[0]]
  end

  def place_ships_on_board(board, ships)
    ships.each do |ship|
      ship.positions.each do |position|
        y, x = position
        board.set_cell(y, x, "S")
      end
    end
  end
end