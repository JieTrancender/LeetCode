 def reverse(x)
	int_max = 0x7fffffff
	int_min = 0x80000000 * -1

	symbol = x < 0 ? true : false
	x = x.abs

	while x % 10 == 0 do
		x = x / 10
	end

	

	str = x.to_s.reverse

	str = symbol ? '-' + str : str
	result = str.to_i

	(result > int_max or result < int_min) ? 0 : result
end

puts reverse(-123)


def reverse(x)
	int_max = 0x7fffffff
	int_min = 0x80000000

	answer = 0
	symbol = x < 0 ? true : false
	x = x.abs

	while (x != 0 ) do
		answer = answer * 10 + x % 10
		x /= 10
	end

	if (symbol and answer > int_min) or (!symbol and answer > int_max)
		answer = 0
	end

	symbol ? -1 * answer : answer
end

puts reverse(-1000000003)