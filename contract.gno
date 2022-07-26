package test

var push int

func init() {
	push = 10
}

func Add(plus int) int {
	push += plus
	return push
}

