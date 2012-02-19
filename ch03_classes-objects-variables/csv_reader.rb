require 'csv'
require_relative 'book_in_stock'
class CsvReader
	def initialize
		@books_in_stock = [] # Define the array books_in_stock, an instance variable
	end
	def read_in_csv_data(csv_file_name)
		# Use the CSV library for parsing csv file,
		# and for each line pass row to code block between 'do' and 'end'
		CSV.foreach(csv_file_name, headers: true) do |row|
			# Insert a new BookInStock instance into the @books_in_stock instance array
			@books_in_stock << BookInStock.new(row["ISBN"], row["Amount"])
		end
	end

	# Later we'll see how to use inject to sum a collection
	def total_value_in_stock
		sum = 0.0 # New decimal variable
		@books_in_stock.each{|book| sum += book.price}
		sum
	end

	def number_of_each_isbn
		# ...
	end
end