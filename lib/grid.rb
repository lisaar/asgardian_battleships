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
		@home_grid[coord] = Cell.new(ship)
	end

	# place (our ship) on (coordinate) facing (horizontal/vertical)
	def place ship, on: coordinate, facing: :horizontal
		# Take our coordinate (referred to as: on)
		# .split it into an array
		# this outputs ['A', '5']
		# so assign the first in the array to x
		# and the second to y
		# so x = 'A'
		# y = '5'
		x,y = on.split("")
		# for the length of the ship, loop through the following
		# if ship length 3, do this 3 times.
		ship.length.times do
			# our place ship function above, passing ship and coordinates
			# x + y works because it is adding two strings, so 'A'+'5' = 'A5'
			place_ship(ship, x + y)
			# this is a shorthand if statement
			# so if facing == :horizontal returns true or false booleans
			# if true, deal with x, or the letter.
			# if false (vertical), deal with y, or the number.
			#  .next goes to the next number / letter in the alphabet
			facing == :horizontal ? x = x.next : y = y.next
		end
		puts 'ship placement successful!'
	end

end















