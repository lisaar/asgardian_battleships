require 'grid'

describe Grid do

	let(:grid) { Grid.new 					}
	let(:ship) { double :ship, :length => 3	}
	# let(:ship) { Ship.new(:length => 3) }


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

		# before do
		# 	grid.place_ship(ship, 'A2')
		# end

		it 'Can have cell with a ship inside' do
			grid.place_ship(ship, 'A2')
			expect(grid.home_grid['A2'].contents).to eq ship

		end

		it 'it places the entire ship on the grid vertically -A' do
			coordinate = "A2"
			grid.place ship, on: coordinate, facing: :vertical
			expect(grid.home_grid['A2'].contents).to eq ship
			expect(grid.home_grid['A3'].contents).to eq ship
			expect(grid.home_grid['A4'].contents).to eq ship
		end

		it 'it places the entire ship on the grid vertically -B' do
			coordinate = "B5"
			grid.place ship, on: coordinate, facing: :vertical
			expect(grid.home_grid['B5'].contents).to eq ship
			expect(grid.home_grid['B6'].contents).to eq ship
			expect(grid.home_grid['B7'].contents).to eq ship
		end

		it 'it places the entire ship on the grid horizontally' do
			coordinate = "B2"
			grid.place ship, on: coordinate
			expect(grid.home_grid['B2'].contents).to eq ship
			expect(grid.home_grid['C2'].contents).to eq ship
			expect(grid.home_grid['D2'].contents).to eq ship
		end
	end

	context 'Validation' do

		it 'knows whether a co-ordinate is valid' do
			coordinate = "A7"
			expect(grid.check_coordinate(coordinate)).to be true
		end

		it 'knows whether a co-ordinate is not valid' do
			coordinate = "N6"
			expect(grid.check_coordinate(coordinate)).to be false
		end

		xit 'knows whether a ship fits in the grid' do
			coordinate = "A2"
			orientaton = :horizontal
			# expect(grid.check_wheater_ship_fits_when_horizontal(ship, coordinate, orientaton)).to be true
			expect(grid.ensure_inclusion_of(coordinate).in_range(grid))		
		end

		it 'will construct a list of the coordinates that the ship wants to use (horizontal)' do
			coordinate = "A2"
			orientaton = :horizontal
			expect(grid.ship_cells(coordinate, ship, orientaton)).to eq ['A2', 'B2', 'C2']
		end

		it 'will construct a list of the coordinates that the ship wants to use (vertical)' do
			coordinate = "A2"
			orientaton = :vertical
			expect(grid.ship_cells(coordinate, ship, orientaton)).to eq ['A2', 'A3', 'A4']
		end

		it 'will check these picked out coordinates are actually valid coordinates' do
			cell_list = ['A2', 'A3', 'A4']
			expect(grid.verify_ship_cells(cell_list, ship)).to be true
		end

		it 'will check these picked out coordinates are actually NOT valid coordinates' do
			cell_list = ['Z10', 'Z11', 'Z12']
			grid.ship_cells("Z9", ship, :vertical)

			expect(grid.verify_ship_cells(cell_list, ship)).to be false
		end


		# will go through the cells that the ship wants to go into
		# it will check each of those cells to see if they exist or not
		# if they exist , put them into an array so we can check them
		# check if the finished array matches the length of the ship - ie, that we have enough checked cells to fit the ship in
		# if we do, go through our selected cells and bung a ship in em.
		# if we don't, tell them it's rubbish.


	end

end


# xit 'only places a ship of that ships length' do
# 	expect(ship.length).to eq grid.max_placement_of(ship)
# end

# xit 'should split our given coordinate into a letter' do
# 	coordinate = "A2"
# 	expect(grid.passed_letter(coordinate)).to eq "A"
# end

# xit 'should split our given coordinate into a number' do
# 	coordinate = "A2"
# 	expect(grid.passed_number(coordinate)).to eq 2
# end












