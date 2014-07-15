require 'ship'

describe Ship do
	it 'has a length' do  
		ship = Ship.new(:length => 5, :name => "Odin")
		expect(ship.length).to eq 5
	end

	it 'has a name' do
		ship = Ship.new(:length => 5, :name => "Odin")
		expect(ship.name).to eq 'Odin'
	end

	it 'can be created as a ship of 2.length called Hawkeye' do
		ship = Ship.new(:length => 2, :name => "Hawkeye")
		expect(ship.length).to eq 2
		expect(ship.name).to eq 'Hawkeye'
	end

	it 'has been hit' do
		ship = Ship.new(:length => 5, :name => "Odin")
		expect(ship.status).to eq "hit"
	end

	
end