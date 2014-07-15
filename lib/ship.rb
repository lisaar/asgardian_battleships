class Ship


	def initialize(options = {})
		@length = options.fetch(:length, length)
		@name = options.fetch(:name, name)	
		@destroyed = false
	end

	def length
		@length
	end

	def name
		@name
	end

	def hit!
		@length -= 1
		destroyed  if @length == 0
	end

	def status
		"hit"
	end

	def destroyed
		@destroyed = true
	end

end


