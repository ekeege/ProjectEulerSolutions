import Foundation

//Problem 5
//2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
//Answer:  232792560

var number: Int = 0

outerLoop: for i in 1... {
  innerLoop: for j in 1...20 {
    if i % j != 0 {
      break innerLoop
    }
    if  i % j == 0 && j == 20 {
      number = i
      break outerLoop
    }
  }
}

number
