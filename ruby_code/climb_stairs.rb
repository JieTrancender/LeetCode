def climb_stairs(n)
	arr = []
	arr[0] = 1
	arr[1] = 1

	(2..n).each do |index|
		arr[index] = arr[index - 1] + arr[index - 2]
	end

	arr[n]
end

puts climb_stairs(2)
puts climb_stairs(3)