class Ship


	def initialize(options = {})
		@length = options.fetch(:length, length)
		@name = options.fetch(:name, name)	
	end

	def length
		@length
	end

	def name
		@name
	end

	def status
		"hit"
	end


end
