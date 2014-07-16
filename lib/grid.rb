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



=begin
	def place_ship(ship, coord)
		max = ship.length

		passed_letter = coord[0]
		passed_number = coord[1]

		counter = 0

		while counter < max do

			current_cell = passed_number.to_i + counter
			coordinate = "#{passed_letter}#{current_cell}"

			@home_grid[coordinate] = ship

			counter += 1
		end

		puts 'ship placement successful!'
	end
=end
end
