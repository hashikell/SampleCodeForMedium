//: Playground - noun: a place where people can play

import Foundation


// Continue the loop by switch-case statement.

let originalText = "vice of historical double meaning of the break statement"
var encryptedText = ""

for ch in originalText.characters {
  switch ch {
  case "a", "e", "i", "o", "u":
    continue
  default:
    encryptedText.append(ch)
  }
}

print(encryptedText)


// Try to break out of the loop by switch-case statement

let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var odd: [Int] = []

for number in numbers {
  switch number {
  case let n where n % 2 == 0:
    continue
  case let n where n == 5:
    break // Found 5 then break out of the loop!
  default:
    odd.append(number)
  }
}

print(odd)


// Try to break out of the loop by switch-case statement successfully

let anotherNumbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var anotherOdd: [Int] = []

mainLoop: for number in anotherNumbers {
  switch number {
  case let n where n % 2 == 0:
    continue
  case let n where n == 5:
    break mainLoop // Found 5 then break out of the loop!
  default:
    anotherOdd.append(number)
  }
}

print(anotherOdd)
