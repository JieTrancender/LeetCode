def two_sum(nums, target)
	hash = {}

	nums.each_index do |index|
		return [hash[target - nums[index]], index] if hash[target - nums[index]]

		hash[nums[index]] = index
	end
end

arr = [2, 7, 11, 15]

puts two_sum(arr, 9).to_s