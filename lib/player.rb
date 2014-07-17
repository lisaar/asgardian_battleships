

class Player

	def ask_for_user_input
		gets.chomp
	end

	def get_coordinate
		return "A4"
		# puts 'Invalid co-ordinate' if Grid.new.valid_coordinate?
		# ask_for_user_input
	end

	# def place_ship(ship)
	# 	ships << ship
	# end

	# def ships
	# 	@ships ||= []
	# end



	# def place_ship ship, coordinate, :facing
	# 	ship = gets.chomp
	# 	coordinate = gets.chomp
	# 	:facing = gets.chomp.to_sym
	# end
end