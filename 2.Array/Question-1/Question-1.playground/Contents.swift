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
    guard !A.isEmpty else {return []}
    
    guard K < 0 else {
        var tempA = [Int]();
        
        for i in 1..<K+1 {
            tempA.insert(A[A.count-i], at: 0)
        }
        
        for i in 0..<A.count-K {
            tempA.append(A[i])
        }
       
        return tempA
    }
    
    return A;
}

solution(A: [1, 2, 3, 4, 5], K:1)
solution(A: [1, 2, 3, 4, 5], K:2)
solution(A: [3, 8, 9, 7, 6], K:3)
