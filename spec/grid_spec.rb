require 'grid'

describe Grid do

	let(:grid) { Grid.new }
	let(:a_cell) { double :cell }

	it 'the grid is an array of hashes' do
		expect(grid.home_grid.class).to eq Array
	end

	xit 'will have a cell called A1' do
		expect(grid.home_grid).to include 'A1' => a_cell
	end

	it 'will have 100 cells' do
		expect(grid.count).to eq 100
	end

	xit 'Each elemnet of the grid has cell' do
		expect(grid.home_grid).to include 'B6' => a_cell
	end

end