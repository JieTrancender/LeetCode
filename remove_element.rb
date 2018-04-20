def remove_element(nums, val)
	firstIndex = 0

	(0...nums.size).each do |index|
		if nums[index] != val
			nums[firstIndex] = nums[index]
			firstIndex = firstIndex + 1
		end
	end

	return firstIndex
end

puts remove_element([3, 2, 2, 3], 3)
puts remove_element([0, 1, 2, 2, 3, 0, 4, 2], 2)