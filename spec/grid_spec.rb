require 'grid'

describe Grid do

	let(:grid) { Grid.new }

	it 'the grid is an array of hashes' do
		expect(grid.home_grid.class).to eq Array
	end

	it 'will have a cell called A1' do
		expect(grid.home_grid).to include 'A1' => :cell
	end

	it 'will have 100 cells' do
		expect(grid.count).to eq 100
	end

	it 'Each elemnet of the grid has cell' do
		expect(grid.home_grid).to include 'B6' => :cell
	end

end