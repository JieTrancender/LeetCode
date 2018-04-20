def add_binary(a, b)
	flag = false
	# a, b = a.size > b.size ? a, b : b, a
	if a.size < b.size
		tmp = a
		a = b
		b = tmp
	end

	(1..b.size).each do |index|
		a[-1 * index] = (a[-1 * index].ord + b[-1 * index].ord - '0'.ord).chr
	end

	(a.size - 1).downto 0 do |index|
		if a[index] > '1'
			a[index] = (a[index].ord - 2).chr
			if index != 0
				a[index - 1] = (a[index - 1].ord + 1).chr
			else
				flag = true
			end
		end
	end

	flag ? "1" + a : a
end


puts add_binary("11", "1")
puts add_binary("1010", "1011")