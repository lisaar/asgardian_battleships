class Grid

	def initialize
		@home_grid = setup_grid
	end

	def home_grid
		@home_grid
	end

	def count
		@home_grid.count
	end

	def setup_grid
		generic_grid = {}

		make_coordinates(generic_grid)

		return generic_grid
	end

	def make_coordinates(generic_grid)
		letters = ('A'..'J').to_a

		letters.each do |letter|
			1.upto(letters.length) do |current_number|
				generic_grid.merge!( {"#{letter}#{current_number}" => Cell.new(Water.new)})
			end
		end
	end

	def place_ship(ship, coord)
		@home_grid[coord] = ship
	end

	def max_placement_of(ship)
		ship.length
	end

	def passed_letter(coordinate)
		coordinate[0]
	end

	def passed_number(coordinate)
		coordinate[1].to_i
	end

	def place_ship_vertically(coordinate, ship)
		passed_letter = passed_letter(coordinate)
		passed_number = passed_number(coordinate)

		counter = 0

		while counter < max_placement_of(ship) do
			current_cell = passed_number + counter
			coordinate = "#{passed_letter}#{current_cell}"

			place_ship(ship, coordinate)

			counter += 1
		end
		puts 'ship placement successful!'
	end

	# def place_ship_horizontally(coordinate, ship)
	# 	passed_letter = passed_letter(coordinate)
	# 	passed_number = passed_number(coordinate)


	# end
end















