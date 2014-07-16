class Player
	def place_ship(ship)
		ships << ship
	end

	def ships
		@ships ||= []
	end

end