package test

var number int

func Get() int {
	return number
}

func Add(plus int, get bool) int {
	number += plus
	if get {
		return number
	}
	return -1
}
