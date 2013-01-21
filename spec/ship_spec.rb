require_relative "../ship.rb"

describe Ship do
	let(:ship) { Ship.new("Aircraft Carrier", 5, [[2, 3], [2, 4], [2, 5], [2, 6], [2, 7]]) } 

	context "#positions" do
		it "sets posisitons" do
			ship.positions.should eq Hash[[2, 3] => :unhit, [2, 4] => :unhit, [2, 5] => :unhit, [2, 6] => :unhit, [2, 7] => :unhit]
		end
	end
end