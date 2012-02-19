def sayGoodnight(name)
	result = "Good night, #{name.capitalize}" 
	# Second parameter within #{} is string method
	# No need to return result, last line evaluated and returned
end

# Time for bed...
puts sayGoodnight('ma')
