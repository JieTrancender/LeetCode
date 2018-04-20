def length_of_last_word(s)
	return 0 if s == nil or s.strip.size == 0

	s.split(' ')[-1].size
end

puts length_of_last_word "Hello World"