require_relative 'csv_reader'
# Creater CsvReader instance
reader = CsvReader.new
# Get arguments from the command line
ARGV.each do |csv_file_name|
	# Write status to command line
  STDERR.puts "Processing #{csv_file_name}"
	# Call method from instance of CsvReader
  reader.read_in_csv_data(csv_file_name)
end

# Write status
puts "Total value = #{reader.total_value_in_stock}"