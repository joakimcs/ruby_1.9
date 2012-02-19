class BookInStock
	def initialize(isbn, price) # Rubys constructor method
		@isbn = isbn            # @ sign denotes an instance variable
		@price = Float(price)   # primitive validation - has to be castable to Float
	end
end

# Testing
b1 = BookInStock.new("isbn", 3)
p b1                            # p prints out internal representation of object
b2 = BookInStock.new("isbn", 3.14)
p b2
b3 = BookInStock.new("isbn", "5.67")
p b3