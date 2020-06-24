def max_sub_array(nums)
	max_sum = nil
	cur_sum = 0

	(0...nums.size).each do |index|
		# if cur_sum == nil 
		cur_sum = cur_sum + nums[index]

		if max_sum == nil or cur_sum > max_sum
			max_sum = cur_sum
		end

		if cur_sum < 0
			cur_sum = 0
		end
	end

	max_sum
end

puts max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4])