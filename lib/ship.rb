class Ship

	@ships = []

	def initialize(options = {})
		@length = options.fetch(:length, length)
		@name = options.fetch(:name, name)
		@destroyed = false
	end

	def self.ships
		@ships
	end
	

	def length
		@length
	end

	def name
		@name
	end

	def hit!
		@length -= 1
		puts "Good shooting, you've struck a ship, with 3 casualties" if @length > 0
 		destroyed  if @length == 0
 		self
	end

	def status
		"hit"
	end

	def destroyed
		puts "KABOOOOM, your ship has been sunk!"
		@destroyed = true
	end

end


