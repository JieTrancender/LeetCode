def remove_duplicates(nums)
	firstIndex = 0

	(0...nums.size).each do |index|
		if index == 0 or nums[firstIndex - 1] != nums[index]
			nums[firstIndex] = nums[index]
			firstIndex = firstIndex + 1
		end
	end

	return firstIndex
end

nums = [1, 1, 2]
nums = [0,0,1,1,1,2,2,3,3,4]

puts remove_duplicates(nums)