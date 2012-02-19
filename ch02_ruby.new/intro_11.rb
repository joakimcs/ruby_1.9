def sayGoodnight(name)
	result = "Good night, #{name.capitalize}" # Second parameter within #{} is string method
	return result
end

# Time for bed...
puts sayGoodnight('uncle')