import Foundation

//Problem 4
//A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//Find the largest palindrome made from the product of two 3-digit numbers.
//Answer:  906609


func isPalindromic(_ number: Int) -> Bool {
  var num = number
  var digits: [Int] = []
  
  while(num > 0) {
    let lastDigit = num % 10
    digits.append(lastDigit)
    num /= 10
  }
  
  for index in 0..<(digits.count/2) {
    if (digits[index] != digits[digits.count - 1 - index]) {
      return false
    }
  }
  return true
}

var largestProduct: Int = 0
var innerLoopStartNumber: Int = 100

for i in 100..<1000 {
  for j in innerLoopStartNumber..<1000 {
    let product = i * j
    if product >= 1_000_000 {
      break
    }
    if isPalindromic(product) && product > largestProduct {
      largestProduct = product
    }
  }
  innerLoopStartNumber += 1
}

largestProduct
