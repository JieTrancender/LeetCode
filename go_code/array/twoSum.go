package main

import "fmt"

func main() {
	arr := []int{1, 3, 4, 6, 7, 8}
	sum := 7

	result := twoSum(arr, sum)
	fmt.Printf("arr[%d] + arr[%d] = %d\n", result[1], result[2], sum)
}

// twoSum 找到两个数和为n
func twoSum(arr []int, n int) []int {
	hash := make(map[int]int)

	for k, v := range arr {
		if _, ok := hash[n-v]; ok == true {
			return []int{hash[n-v], k}
		}
		hash[v] = k
	}

	return []int{0, 0}
}
