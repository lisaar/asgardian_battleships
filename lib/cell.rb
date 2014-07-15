require_relative 'water'
require_relative 'ship'

class Cell

	def initialize(contents)
		@contents = contents
	end

	def contents
		@contents
	end

	def hit_cell!
		@contents = @contents.hit!
	end

end