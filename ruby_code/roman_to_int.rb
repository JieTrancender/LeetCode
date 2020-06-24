def roman_to_int(s)
	hash = {
		"I" => 1,
		"V" => 5,
		"X" => 10,
		"L" => 50,
		"C" => 100,
		"D" => 500,
		"M" => 1000,
		"IV" => 4,
		"IX" => 9,
		"XL" => 40,
		"XC" => 90,
		"CD" => 400,
		"CM" => 900
	}

	result = 0
	flag = false
	for i in 0...s.size
		if flag
			flag = false
			next
		end

		if s[i] == 'I' and s[i + 1] != nil and (s[i + 1] == 'V' or s[i + 1] == 'X') then
			flag = true
			result += hash[s[i] + s[i + 1]]
		end

		if s[i] == 'X' and s[i + 1] != nil and (s[i + 1] == 'L' or s[i + 1] == 'C') then
			flag = true
			result += hash[s[i] + s[i + 1]]
		end

		if s[i] == 'C' and s[i + 1] != nil and (s[i + 1] == 'D' or s[i + 1] == 'M') then
			flag = true
			result += hash[s[i] + s[i + 1]]
		end

		if !flag
			result += hash[s[i]]
		end
	end

	result
end

puts roman_to_int "MCMXCIV"