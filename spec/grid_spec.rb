require 'grid'

describe Grid do

	let(:grid) { Grid.new }

	it 'the grid is an array of hashes' do
		expect(grid.home_grid.class).to eq Hash
	end

	it 'will have a cell called A1' do
		expect(grid.home_grid).to include 'A1'
	end

	it 'will have 100 cells' do
		expect(grid.count).to eq 100
	end

	it 'Each element of the grid has cell' do
		expect(grid.home_grid["B6"]).to be_an_instance_of Cell
	end

	context 'Placing ships' do

		it 'Can have cell with a ship inside' do
			ship = double :ship
			grid.place_ship(ship, 'A2')
			expect(grid.home_grid['A2']).to eq ship
		end

		it 'it places the entire ship on the grid horizontally' do
		end

		xit 'only places a ship of that ships length' do
			ship = double :ship, :length => 3
			ship.length
			expect(ship.length).to eq max
		end
			# Needed to know how long our ship is
			# Split our given coordinate into a letter and a number
			# We wanted to loop through cells up to the length of our ship
			# We needed to work out which cell we are currently on (A2, A3, A4)
			# Current cell needs to be made into a coordinate (so add the letter to the front)
			# Add the ship to the coordinate
			# Make sure the loop carries on
			# puts 'ship placement successfull'

			#  Refactor. Make horizontal stuff it's own method, make add ship own method etc.

	end


end