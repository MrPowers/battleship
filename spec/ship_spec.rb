require_relative "../ship.rb"

describe Ship do
	let(:ship) { Ship.new("Aircraft Carrier", 5, [[2, 3], [2, 4], [2, 5], [2, 6], [2, 7]]) } 

	context "#positions" do
		it "sets posisitons" do
			ship.positions.should eq Hash[[2, 3] => :unhit, [2, 4] => :unhit, [2, 5] => :unhit, [2, 6] => :unhit, [2, 7] => :unhit]
		end
	end

	context "#get_status" do
		it "gets the status of a position" do
			ship.get_status([2, 3]).should eq :unhit
		end
	end

	context "#sunk?" do
		it "returns true for sunk ship" do
			pb = Ship.new("Patrol Boat", 2, [[2, 3], [2, 4]])
			pb.hit([2, 3])
			pb.sunk?.should be_false
			pb.hit([2, 4])
			pb.sunk?.should be_true
		end
	end
end