import Foundation

//Problem 6
//Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

var sumOfSquares: Int =  0

for i in 1...100 {
  sumOfSquares += i*i
}
var sum: Int = 0

for i in 1...100 {
  sum += i
}

let squareOfSum = sum*sum

let difference = squareOfSum - sumOfSquares

difference
