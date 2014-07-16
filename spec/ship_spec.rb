require 'ship'


describe Ship do

	let(:ship) {Ship.new(:length => 5, :name => "Odin")}

	it 'has a length' do
		expect(ship.length).to eq 5
	end

	it 'has a name' do
		expect(ship.name).to eq 'Odin'
	end

	it 'can be created as a ship of 2.length called Hawkeye' do
		ship = Ship.new(:length => 2, :name => "Hawkeye")
		expect(ship.length).to eq 2
		expect(ship.name).to eq 'Hawkeye'
	end

	xit 'when a ship is created it ends up in the ship array' do
		expect(@ships).to eq :ship
	end

	it 'has a status of hit once hit' do
		ship.hit!
		expect(ship.status).to eq "hit"
	end

	it 'has its length reduced by a count of 1 when hit' do
		ship.hit!
		expect(ship.length).to eq 4
	end

	it 'is destroyed when length becomes 0' do
		sunk_ship = Ship.new(:length => 1, :name => "sunken ship")
		sunk_ship.hit!
		expect(sunk_ship.destroyed).to be true
	end

	context 'Creates ships for the game' do
		it 'hawkeye length 2' do
			Hawkeye = Ship.new(:length => 2, :name => "Hawkeye")
			expect(Hawkeye).to be_a Ship
		end

		it 'Thor length 3' do
			Thor = Ship.new(:length => 3, :name => "Thor")
			expect(Thor).to be_a Ship
		end

		it 'Hulk length 3' do
			Hulk = Ship.new(:length => 3, :name => "Hulk")
			expect(Hulk).to be_a Ship
		end

		it 'Fury length 4' do
			Fury = Ship.new(:length => 4, :name => "Fury")
			expect(Fury).to be_a Ship
		end

		it 'Odin length 5' do
			Odin = Ship.new(:length => 5, :name => "Odin")
			expect(Odin).to be_a Ship
		end


	end

end