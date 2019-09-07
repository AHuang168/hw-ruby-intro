# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	if arr.empty?
		return 0
	end
	total = 0
	for nums in arr
		total += nums
	end
	return total
end

def max_2_sum arr
  # YOUR CODE HERE
	if arr.empty?
		return 0
	end
	if arr.length == 1
		return arr[0]
	end
	val1 = arr.max
	ind = arr.find_index(val1)
	arr.delete_at(ind)
	val2 = arr.max
	return val1 + val2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	if arr.empty? or arr.length == 1
		return false
	end
	for i in 0..(arr.length - 1)
		for j in (i+1)..(arr.length - 1)
			if arr[i] + arr[j] == n
				return true
			end
		end
	end
	return false
end


# Part 2

def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant? s
	# YOUR CODE HERE
	if s.empty?
		return false
	end
	firstChar = s[0]
	if not((('a'..'z').to_a + ('A'..'Z').to_a).include? firstChar)
		return false
	end
	firstChar.downcase!
	if ['a', 'e', 'i', 'o', 'u'].include? firstChar 
		return false
	end
	return true
end


def binary_multiple_of_4? s
	if s.empty?
		return false
	end
	v = (s.to_i(2))
	for char in s.each_char
		if not(['0','1'].include? char)
			return false
		end
	end
	if v % 4 == 0
		return true
	end
	return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn, price)
		if isbn.empty? or price <= 0
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end

	def isbn 
		@isbn
	end

	def price
		@price
	end

	def isbn=(isbn)
		@isbn = isbn
	end

	def price=(price)
		@price = price
	end

	def price_as_string
		if @price.is_a? Float
			if @price % 0.1 < 0.009
				return "$#{@price}0"
			end
			return "$#{@price}"
		end
		return "$#{@price}.00"
	end
end
