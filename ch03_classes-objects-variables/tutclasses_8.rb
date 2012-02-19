class BookInStock
	
	# Rubys constructor method
	def initialize(isbn, price) 
		@isbn = isbn            # @ sign denotes an instance variable
		@price = Float(price)   # primitive validation - has to be castable to Float
	end
	
	# Accessor methods
	def isbn
		@isbn
	end
	def price
		@price
	end

	# overwrite ruby's default to_s method
	def to_s
		"ISBN: #{@isbn}, price: #{@price}" # returns this string as default (last evaluated line), used by puts
	end   
	                      
end

# Testing
book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "price = #{book.price}"