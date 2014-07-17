require_relative 'cell'

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
		# @home_grid[coord] = ship
		@home_grid[coord] = Cell.new(ship)
	end

	def ship_cells(coordinate, ship, orientaton)
		@ship_cells_list = []

		letter, number = coordinate.split("")

		ship.length.times do

			coord = letter + number
			@ship_cells_list << coord

			if orientaton == :horizontal
				letter = letter.next
			else
				number = number.next
			end

		end
		@ship_cells_list
	end

	def verify_ship_cells(cell_list, ship)

		cell_list.keep_if do |single_ship_element|
			check_coordinate(single_ship_element)
		end

		cell_list.count == ship.length
	end

	def place ship, on: coordinate, facing: :horizontal

		letter, number = on.split("")

		ship.length.times do

			coordinate = letter + number

			if check_coordinate(coordinate) == true
				puts 'Placed on:'
				puts coordinate
				puts

				place_ship(ship, coordinate)

				if facing == :horizontal
					letter = letter.next
				else
					number = number.next
				end

			else

				puts 'coordinate does not exist'

			end
		end
		puts 'ship placement successful!'
	end

	def check_coordinate(coordinate)
		@home_grid.has_key?(coordinate)
	end



	# def check_wheater_ship_fits_when_horizontal(ship, coordinate, orientation)
	# 	true
	# end
end















