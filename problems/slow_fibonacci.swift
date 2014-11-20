import Foundation

func fib(n: Int) -> Int {
	switch n {
	case 1, 2:
		return 1
	default:
		return fib(n - 2) + fib(n - 1)
	}
}

fib(8) // 21
