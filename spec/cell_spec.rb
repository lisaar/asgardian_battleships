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

	it 'water can be attacked' do

	end




end

