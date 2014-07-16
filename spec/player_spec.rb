require 'player'

describe Player do
	it 'has ships' do
		odin = double :ship
		player = Player.new
		player.place_ship(odin)
		expect(player.ships).to eq [odin]
	end

	it 'places ships on grid' do
		
	end
end