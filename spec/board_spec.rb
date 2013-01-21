require_relative "../board.rb"

describe Board do
	let(:board) { Board.new }

	context "#grid" do
		it "creates a grid with 11 rows" do
			board.grid.count.should eq 11
		end

		it "creates a grid with 11 columns" do
			board.grid.transpose.count.should eq 11
		end

		it 'the first row of the grid is [" ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]' do
			board.grid[0].should eq [" ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
		end

		it "each row of the grid should start with 1-10" do
			board.grid.transpose[0].should eq [" "] + (1..10).to_a
		end

		it "sets and gets cells of the grid" do
			board.set_cell(4, 3, "Meow")
			board.get_cell(4, 3).should eq "Meow"
		end
	end
end