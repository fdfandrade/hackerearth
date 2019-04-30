package main

import (
	"fmt"
	"math"
)

func main() {
	var testCases, liftA, liftB, floor int = 0, 0, 7, 0
	fmt.Scanln(&testCases)

	output := make([]string, testCases)

	for i := 0; i < testCases; i++ {
		fmt.Scanln(&floor)
		distanceToA := math.Abs(float64(floor - liftA))
		distanceToB := math.Abs(float64(floor - liftB))

		if distanceToA <= distanceToB {
			liftA = floor
			output[i] = "A"
		} else {
			liftB = floor
			output[i] = "B"
		}
	}

	for _, o := range output {
		fmt.Println(o)
	}
}
