class BookInStock
	
	# Rubys constructor method
	def initialize(isbn, price) 
		@isbn = isbn            # @ sign denotes an instance variable
		@price = Float(price)   # primitive validation - has to be castable to Float
	end
	
	# overwrite ruby's default to_s method
	def to_s
		"ISBN: #{@isbn}, price: #{@price}" # returns this string as default (last evaluated line), used by puts
	end   
	                      
end

# Testing
b1 = BookInStock.new("isbn1", 3)
puts b1                            # p prints out internal representation of object
b2 = BookInStock.new("isbn2", 3.14)
puts b2
b3 = BookInStock.new("isbn3", "5.67")
puts b3