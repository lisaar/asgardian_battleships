require 'cell'

describe Cell do

	let(:water) { Water.new }
	let(:cell) { Cell.new(water) }
	let(:ship) { Ship.new(:length => 5, :name => "Odin") }
	let(:cell_with_ship) { Cell.new(ship) }

	it 'it contains water' do
		expect(cell.contents).to eq water
	end

	it 'can contain a ship' do
		expect(cell_with_ship.contents).to eq ship
	end

	it 'it handles an hit on water' do
		expect(cell.contents).to eq water
		cell.hit_cell!
		expect{ cell.hit_cell! }.to raise_error(RuntimeError)
	end

	it 'handles a hit on a ship' do
		expect(cell_with_ship.contents).to eq ship
		cell_with_ship.hit_cell!
		expect{ cell_with_ship.hit_cell! }.to raise_error(RuntimeError)
	end

	xit 'adds a ship to the cell' do
		expect(cell)
	end

end

