package test2

import (
	"gno.land/r/ismatest_mother_contract"
)

func Interact(arg int) int {
	switch(arg) {
		case 1:
			return test.Get()
		case 2:
			return test.Add(5, true)
		case 3:
			return test.Add(5, false)
		default:
			return -1
	}
}
