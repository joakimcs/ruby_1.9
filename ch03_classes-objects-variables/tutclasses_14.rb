class BookInStock
	
	# Ruby shortcut for creating attribute reader methods
	attr_reader :isbn

	# Ruby shortcut for creating attribute read/write methods
	attr_accessor :price

	# Rubys constructor method
	def initialize(isbn, price) 
		@isbn = isbn            # @ sign denotes an instance variable
		@price = Float(price)   # primitive validation - has to be castable to Float
	end

	def price_in_cents
		Integer(price*100 + 0.5)
	end

	def price_in_cents=(cents)
		@price = cents / 100.0
	end

	# overwrite ruby's default to_s method
	def to_s
		"ISBN: #{@isbn}, price: #{@price}" # returns this string as default (last evaluated line), used by puts
	end   
	                      
end

# Testing
book = BookInStock.new("isbn1", 33.80)
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"