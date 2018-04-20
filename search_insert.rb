def search_insert(nums, target)
	(0...nums.size).each do |index|
		return index if nums[index] >= target
	end

	nums.size
end

puts search_insert([1, 3, 5, 6], 5)
puts search_insert([1, 3, 5, 6], 2)
puts search_insert([1, 3, 5, 6], 7)
puts search_insert([1, 3, 5, 6], 0)