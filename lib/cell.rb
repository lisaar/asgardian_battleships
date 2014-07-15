class Cell
	def initialize
		@status = :water
	end

	def status
		@status
	end

	def contain_ship
		@status = :ship
	end


end