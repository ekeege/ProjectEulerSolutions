import Foundation

//Problem 3
//The prime factors of 13195 are 5, 7, 13 and 29.
//What is the largest prime factor of the number 600851475143 ?
//Answer:  6857

let number: Int = 600_851_475_143
var largestPrimeFactor: Int?

for i in 2...number {
  if number % i == 0 && isPrimeNumber(i) {
    largestPrimeFactor = i
  }
}

func isPrimeNumber(_ number: Int) -> Bool {
  if (number == 0 || number == 1) {
    return false
  }
  else {
    for i in 2..<number {
      if (number % i == 0) {
        return false
      }
    }
  }
  return true
}

largestPrimeFactor
