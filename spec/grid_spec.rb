require 'grid'

describe Grid do 

	it 'has 100 cells' do
		grid = Grid.new
		expect(grid.count).to eq 100
	end

	# it 'the cells in the grid to have co-ordinates' do
	# 	grid = Grid.new
	# 	expect(grid).to contain('A4', 'E7', 'D2')
	# end

end