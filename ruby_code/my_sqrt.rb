def my_sqrt(x)
	g = x * 1.0
	while (g*g - x).abs > 0.000001 do
		# puts g
		g = (g + x / g) / 2
	end

	g.to_i
end

puts my_sqrt(4)
puts my_sqrt(8)