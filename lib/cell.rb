class Cell
	def initialize
		@status = :water
		@attack_status = :unattacked
	end

	def status
		@status
	end

	def contain_ship
		@status = :ship
	end

	def attack_status
		@attack_status
	end

	def attack!
		@attack_status = :miss if @status == :water
		@attack_status = :hit if @status == :ship
	end

end