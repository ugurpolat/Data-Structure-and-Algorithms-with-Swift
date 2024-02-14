import Foundation

// Max Consecutive Ones

/*
 Given a binary array, find the maximum number of consecutive 1s in this array.
 
 Example:
 Input = [1,1,0,1,1,1]
 output 3
 
 Explanation: The first two digits or the last three digits are consecutie 1s.
 The max. number of consecutive 1s is 3.
 */



func max(_ array : [Int]) -> Int {
  
  var globalOutput = 0 // 1
  var localOutput = 0 // 1
  
  for item in array { // n
    if item != 0 {
      localOutput += 1 //n
      globalOutput = max(localOutput, globalOutput) // n
    } else {
      localOutput = 0 // n
    }
  }
  
  return globalOutput // 1
  
}

// Run time = 1 + 1 + n + n + n + 1 = 3 + 3n  -> O(n)


let test_1 = [1,1,0,1,1,1]
let test_2 = [1,1,0,1,1,1,0,0,1,1,1,1,1]

var a = max(test_1)
var b = max(test_2)
