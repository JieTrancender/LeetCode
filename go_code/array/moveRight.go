package main

import "fmt"

func main() {
	arr := []int{1, 2}

	for k, v := range moveRight(arr, 2) {
		fmt.Printf("k = %d, v = %d\n", k, v)
	}
}

// swap 两数交换
func swap(a *int, b *int) {
	temp := *a
	*a = *b
	*b = temp
}

// reverse 数组逆转
func reverse(arr []int, begin, end int) {
	for i := 0; i <= (end-begin)/2; i++ {
		swap(&arr[begin+i], &arr[end-i])
	}
}

// moveRight 数组右移k位
func moveRight(arr []int, k int) []int {
	len := len(arr)
	if len <= 1 {
		return arr
	}
	reverse(arr, 0, len-1)
	reverse(arr, 0, k-1)
	reverse(arr, k, len-1)
	return arr
}
