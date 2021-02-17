import Foundation

//Problem 7
//By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//What is the 10 001st prime number?
//Answer:  104743

var primeCount: Int = 0

var prime10_001st: Int = 0

for number in 2... {
  if isPrime(number) {
    primeCount += 1
    if primeCount == 10_001 {
      prime10_001st = number
      break
    }
  }
}

func isPrime(_ number: Int) -> Bool {
  if number == 0 || number == 1 {
    return false
  }
  else {
    for i in 2..<number {
      if number % i == 0 {
        return false
      }
    }
  }
  return true
}
prime10_001st
