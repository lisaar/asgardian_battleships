require 'cell'

describe Cell do

	let(:cell) {Cell.new}

	it 'its initial status is water' do 
		expect(cell.status).to eq :water 
	end

	it 'can have the status of contain_ship' do
		cell.contain_ship
		expect(cell.status).to eq :ship
	end

	it 'initially hasn\'t been attacked' do
		expect(cell.attack_status).to eq :unattacked
	end

	it 'can be attacked' do
		cell.attack!
		expect(cell.attack_status).not_to eq :unattacked
	end

	it 'cell with water status can be attacked and not hit a ship' do
		cell.attack!
		expect(cell.attack_status).to eq :miss
	end

	it 'cell with ship status can be attacked and hit a ship' do
		cell.contain_ship
		cell.attack!
		expect(cell.attack_status).to eq :hit
	end

# Player says 'attack cell (this coord)!'
# the method attack_cell(coord) runs
# attack_cell(coord) do
#  Cell.attack!
# end

end

