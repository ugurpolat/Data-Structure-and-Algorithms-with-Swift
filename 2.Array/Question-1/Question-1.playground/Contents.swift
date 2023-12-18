import UIKit

/*
 Rotate array to right N times
 
 For example, given
 
 A = [3, 8, 9, 7, 6]
 K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:
 
 [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
 [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
 [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 
 */

func solution (A: [Int], K: Int) ->[Int] {
    guard !A.isEmpty else { return [] }
    guard K > 0 else { return A }
    
    var result = A
    
    for _ in 1...K { // O(n)
        result = rotateRightOnce(A: result)
    }
    
    
    return result
}

func rotateRightOnce(A:[Int]) -> [Int] {
    var newArray = Array<Int>(repeating: 0, count: A.count)
    
    
    for i in 0..<A.count-1 { // O(n)
        newArray[i+1]=A[i]
    }
    
    newArray[0] = A.last!
    
    return newArray
}

rotateRightOnce(A: [1,2,3,4,5])

let a = solution(A: [1, 2, 3, 4, 5], K:1)
let b = solution(A: [1, 2, 3, 4, 5], K:2)
let c = solution(A: [3, 8, 9, 7, 6], K:3)

print(a)
print(b)
print(c)

