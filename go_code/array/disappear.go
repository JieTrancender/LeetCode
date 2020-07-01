package main

import (
	"fmt"
)

func main() {
	nums := []int{4, 3, 2, 7, 8, 2, 3, 1}

	for _, v := range disappear(nums) {
		fmt.Print(v, " ")
	}
}

func abs(n int) int {
	if n >= 0 {
		return n
	}

	return -n
}

func disappear(nums []int) []int {
	result := make([]int, 0)

	var index int
	for _, v := range nums {
		index = abs(v) - 1
		if nums[index] >= 0 {
			nums[index] *= -1
		}
	}

	for k, v := range nums {
		if v > 0 {
			result = append(result, k+1)
		}
	}

	return result
}
