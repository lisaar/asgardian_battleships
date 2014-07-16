require_relative 'water'
require_relative 'ship'
require_relative 'shotatcell'

class Cell

	def initialize(contents)
		@contents = contents
	end

	def contents
		@contents
	end

	def hit_cell!
		@contents = ShotAtCell.new(@contents.hit!)
	end
 
 	#def add_ship(name)
 		#@contents = ships.select {|ship| name}
 	#end
end