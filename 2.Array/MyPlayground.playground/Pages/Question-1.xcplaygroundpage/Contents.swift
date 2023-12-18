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
  
  var globalOutput = 0
  var localOutput = 0
  
  for item in array {
    if item != 0 {
      localOutput += 1
      globalOutput = max(localOutput, globalOutput)
    } else {
      localOutput = 0
    }
  }
  
  return globalOutput
  
}



let test_1 = [1,1,0,1,1,1]
let test_2 = [1,1,0,1,1,1,0,0,1,1,1,1,1]

var a = max(test_1)
var b = max(test_2)
