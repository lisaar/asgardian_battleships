require 'player'
require 'grid'

describe Player do

	# it 'has ships' do
	# 	odin = double :ship
	# 	player = Player.new
	# 	player.place_ship(odin)
	# 	expect(player.ships).to eq [odin]
	# end

	it 'places ships on grid' do
		ship = double(:ship, :length => 2, :name => ship)
		player = Player.new
		grid = Grid.new
		player.place_ship_on_grid ship, on: "B2", facing: :horizontal
		expect(
		# place ship, on: coordinate, facing: :horizontal
	end
end