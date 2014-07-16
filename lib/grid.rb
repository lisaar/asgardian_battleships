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
			letters.length.times do |current_number|
				generic_grid.merge!( {"#{letter}#{current_number}" => Cell.new(Water.new)})
			end
		end
	end

	def place_ship(ship, coord)
		@home_grid[coord] = ship
	end

	def place ship, on: coordinate, facing: :horizontal
		x,y = on.split("")
		ship.length.times do
			place_ship(ship, x + y)
			facing == :horizontal ? x = x.next : y = y.next
		end
		puts 'ship placement successful!'
	end

end















