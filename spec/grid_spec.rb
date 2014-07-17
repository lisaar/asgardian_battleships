require 'grid'

describe Grid do

	let(:grid) { Grid.new 					}
	let(:ship) { double :ship, :length => 3	}


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
			grid.place_ship(ship, 'A2')
			expect(grid.home_grid['A2']).to eq ship
		end

		xit 'only places a ship of that ships length' do
			expect(ship.length).to eq grid.max_placement_of(ship)
		end

		xit 'should split our given coordinate into a letter' do
			coordinate = "A2"
			expect(grid.passed_letter(coordinate)).to eq "A"
		end

		xit 'should split our given coordinate into a number' do
			coordinate = "A2"
			expect(grid.passed_number(coordinate)).to eq 2
		end

		it 'it places the entire ship on the grid vertically -A' do
			coordinate = "A2"
			grid.place ship, on: coordinate, facing: :vertical
			expect(grid.home_grid['A2']).to eq ship
			expect(grid.home_grid['A3']).to eq ship
			expect(grid.home_grid['A4']).to eq ship
		end

		it 'it places the entire ship on the grid vertically -B' do
			coordinate = "B5"
			grid.place ship, on: coordinate, facing: :vertical
			expect(grid.home_grid['B5']).to eq ship
			expect(grid.home_grid['B6']).to eq ship
			expect(grid.home_grid['B7']).to eq ship
		end

		it 'it places the entire ship on the grid horizontally' do
			coordinate = "B2"
			grid.place ship, on: coordinate
			expect(grid.home_grid['B2']).to eq ship
			expect(grid.home_grid['C2']).to eq ship
			expect(grid.home_grid['D2']).to eq ship
		end


	end

end