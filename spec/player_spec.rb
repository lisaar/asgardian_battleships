require 'player'


describe Player do

	let(:player) { Player.new }

	it 'can ask the player for input' do
		allow(player).to receive(:gets).and_return('1')
		expect(player.ask_for_user_input).to eq '1'
	end

	it 'asks the player to pick a starting co-ordinate' do
		allow(player).to receive(:gets).and_return('A4')
		expect(player.get_coordinate).to eq 'A4'
	end

	it 'asks the player to pick a starting co-ordinate' do
		allow(player).to receive(:gets).and_return('A4')
		expect(player.get_coordinate).to eq 'A4'
	end

	xit 'asks the user to give a new input if their co-ordinate doesn\'t exist' do
		allow(player).to receive(:gets).and_return('JJ')
		expect(player.get_coordinate).to receive(:puts).with('Invalid co-ordinate')

	end
	# it 'if user input is not a valid starting co-ordinate' do
		# prompt for a new one
		# expect(player.check_coordinate)
	# end

	# it 'has ships' do
	# 	odin = double :ship
	# 	player = Player.new
	# 	player.place_ship(odin)
	# 	expect(player.ships).to eq [odin]
	# end

	# it 'initalizes a player with a grid' do
	# grid = double :grid
	# player = Player.new(grid)
	# expect(player).to receive(:grid)
	# end


	# xit 'says where they want to place ships' do
	# 	ship = double :ship
	# 	"B5" = double "cell"
	# 	player.place_ships(ship, "B5", horizontal)
	# 	expect(player.place_ships)
	# end

end


# Ask the player to pick a starting co-ordinate
# Save user input as co-ordinate
# Ask the player for horizontal or vertical
# Save user input as orientation
# Run our method in grid.rb with the above information
# Display happy little well done message