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


end