import UIKit

/*
 It's all about dominant operations
 ->Time (how fast)
 ->Space (how much memory)
 
 Big O notation in terms of Worst case performance
 
 Horrible -> Excellent
 O(log n),O(1) -> O(n) -> O(n log n) -> O(n^2) -> O(2^n) -> O(n!)
 
 www.bigocheatsheet.com
*/

// Constant time o(1)
func constantTime(n: Int)->Int {
    let result = n * n;
    return result
}

constantTime(n: 5);


// Linear time O(n)
func linearTime(A:[Int]) -> Int {
    for i in 0..<A.count{
        if A[i] == 0 {
            return 0
        }
    }
    return 1
}

linearTime(A:[1,2,3]);

// Logarithmic time O(log n)
func logarithmicTime(N:Int)->Int{
    var n = N
    var result = 0
    while n > 1 {
        n /= 2
        result += 1
    }
    return result
}

logarithmicTime(N: 128)

// Quadratic time O(n^2)
func quadratic(n:Int)->Int {
    var result = 0
    for i in 0..<n {
        for j in i..<n {
            result += 1
        }
    }
    return result
}
quadratic(n: 16);

/*
    Given two arrays, create a function that let's a user know whether these two arrays contain any common items.
*/
                                                                        //                   Time    Space
                                                                            
                                                                        // Brute            O(n^2)     O(1)
                                                                        // Hash Map less time  O(n)    O(n) more space
// O(n^2)
func commonItemsBrute(A:[Int], B:[Int])->Bool {
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j] {
                return true
            }
        }
    }
    return false
}

commonItemsBrute(A: [1,2,3], B: [4,5,6])
commonItemsBrute(A: [1,2,3], B: [3,4,5])

// Conver to hash and lookup via other index
func commonItemsHash(A:[Int], B:[Int])->Bool{
    
    // Still looping...but not nested - O(2n) vs O(n^2)
    var hashA = [Int: Bool]()
    for a in A { // O(n)
        hashA[a] = true
    }
    
    for b in B { // O(n)
        if hashA[b] == true {
            return true
        }
    }
    return false
}

commonItemsHash(A: [1,2,3], B: [4,5,6])
commonItemsHash(A: [1,2,3], B: [3,4,5])




