package main

import (
	"fmt"
)

func main() {
	nums := []int{1, 1, 0, 1, 1, 1}

	fmt.Println(maxOne(nums))
}

func maxOne(nums []int) int {
	count, maxCount := 0, 0
	for _, v := range nums {
		if v == 1 {
			count = count + 1
			if count > maxCount {
				maxCount = count
			}
		}

		if v != 1 {
			count = 0
		}
	}

	return maxCount
}
