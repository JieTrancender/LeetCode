def is_palindrome(x)
	x = x.to_s

	result = true
	size = x.size

	(0..size / 2).each do |item|
		if x[item] != x[size - item - 1]
			result = false
			break
		end
	end

	result
end

puts is_palindrome(1010)


def is_palindrome(x)
	result = false

	if x >= 0
		first = x
		second = 0
		while x != 0 do
			second = second * 10 + x % 10
			x = x / 10
		end

		if first == second
			result = true
		end
	end

	result
end

puts is_palindrome(10101)