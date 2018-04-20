def is_valid(s)
	hash = {
		'(' => ')',
		'{' => '}',
		'[' => ']'
	}

	arr = Array.new
	(0...s.size).each do |index|
		if arr.empty? or hash[arr.last] != s[index]
			arr.push(s[index])
		else
			arr.pop
		end
	end

	return arr.empty?
end

puts is_valid "()"
puts is_valid "()[]{}"
puts is_valid "(]"
puts is_valid "([)]"
puts is_valid "{[]}"