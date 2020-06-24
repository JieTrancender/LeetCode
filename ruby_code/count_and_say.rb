def count_and_say(n)
	hash = {
		1 => "1"
	}

	(2..n).each do |index|
		str = hash[index - 1]
		result = ""
		record = nil
		count = 0
		(0...str.size).each do |i|
			if record == nil
				record = str[i]
				count = 1
			elsif str[i] == record
				count = count + 1
			else
				result = result + count.to_s + record
				record = str[i]
				count = 1
			end
		end

		result = result + count.to_s + record

		hash[index] = result
		# puts hash.to_s
	end

	hash[n]
end

puts count_and_say 1
puts count_and_say 4
puts count_and_say 10