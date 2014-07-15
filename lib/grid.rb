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
		generic_grid = []

		make_coordinates(generic_grid)

		return generic_grid
	end

	def make_coordinates(generic_grid)
		letters = ('A'..'J').to_a

		letters.each do |letter|
			1.upto(letters.length) do |current_number|
				generic_grid << {"#{letter}#{current_number}" => Cell.new}
			end
		end
	end
end
