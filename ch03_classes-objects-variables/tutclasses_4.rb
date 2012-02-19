class BookInStock
	def initialize(isbn, price) # Rubys constructor method
		@isbn = isbn            # @ sign denotes an instance variable
		@price = Float(price)   # primitive validation - has to be castable to Float
	end
end