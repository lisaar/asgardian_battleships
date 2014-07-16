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

	it 'Each elemnet of the grid has cell' do
		expect(grid.home_grid["B6"]).to be_an_instance_of Cell
	end

end