def plus_one(digits)
	size = digits.size - 1
	digits[size] = digits[size] + 1

	size.downto 0 do |index|
		if digits[index] >= 10
			digits[index] = digits[index] % 10
			if index != 0
				digits[index - 1] = digits[index - 1] + 1
			else
				digits.unshift(1)
			end
		end
	end

	digits
end


puts plus_one([1,2,3]).to_s
puts plus_one([9,9,9]).to_s