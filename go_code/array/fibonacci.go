package main

import "fmt"

func main() {
	fmt.Printf("Fib(%d) = %d\n", 2, fib(4))
}

func fib(n int) int {
	if n <= 0 {
		return 0
	}

	if n == 1 {
		return 1
	}

	first, second := 0, 1
	tmp := 0
	for i := 2; i <= n; i++ {
		tmp = second
		second = first + second
		first = tmp
	}

	return second
}
