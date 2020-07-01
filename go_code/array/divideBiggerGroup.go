package main

import "fmt"

func main() {
	// str := "abcdddeeeeaabbbcd"
	str := "aaa"

	for i, v := range divideBiggerGroup(str) {
		fmt.Printf("%d-[%d, %d] ", i, v[0], v[1])
	}
}

func divideBiggerGroup(S string) [][]int {
	res := make([][]int, 0)

	min := 0
	len := len(S)
	for i := range S {
		if i == len-1 || S[i] != S[i+1] {
			if i-min >= 2 {
				res = append(res, []int{min, i})
			}
			min = i + 1
		}
	}

	return res
}
