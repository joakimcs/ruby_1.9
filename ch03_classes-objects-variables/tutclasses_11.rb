class BookInStock
	
	# Ruby shortcut for creating attribute reader methods
	attr_reader :isbn, :price

	# Rubys constructor method
	def initialize(isbn, price) 
		@isbn = isbn            # @ sign denotes an instance variable
		@price = Float(price)   # primitive validation - has to be castable to Float
	end

	# setter methods, method name ends with equals sign
	def price=(new_price)
		@price = new_price
	end

	# overwrite ruby's default to_s method
	def to_s
		"ISBN: #{@isbn}, price: #{@price}" # returns this string as default (last evaluated line), used by puts
	end   
	                      
end

# Testing
book = BookInStock.new("isbn1", 33.80)
puts "ISBN = #{book.isbn}"
puts "price = #{book.price}"
book.price = book.price * 0.75
puts "New price = #{book.price}"