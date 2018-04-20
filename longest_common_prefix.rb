def longest_common_prefix(strs)
	first = strs[0]
	result = ""
	index = 0
	flag = false

	if strs.size > 0
		while true
			strs.each do |str|
				if str[index] != first[index] or str[index] == nil
					flag = true
					break
				end
			end

			break if flag
			result += first[index]
			index = index + 1
			break if index == first.size
		end
	end

	result
end

puts longest_common_prefix ["flower", "flow", "flight"]
puts longest_common_prefix ["dog", "racecar", "car"]
puts longest_common_prefix [""]
puts longest_common_prefix ["a"]