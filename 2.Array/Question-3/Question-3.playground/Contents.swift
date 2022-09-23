import UIKit

/*
 When someone searches their contacts based on a phone number, it's nice when a list of contact pops up.
 
 Write an algorithm that searches you contacts for phone number strings, and returns:
    - NO CONTACT if contact can't be found
    - A contact if a contact is found
    - The first alphabetized contact if there are multiple
 
 A = ["pim", "pom"]             // Contacts (return one of these)
 B = ["999999999", "777888999"] // Phone numbers for each contact A[i] = B[i]
 P = "88999"                    // Search phrase
 
 Answer should be correct. Dont't worry about performance.
 */

public func solution(A: [String], B: [String], P: String) -> String {
    
    var result = [String]()
    
    // loop through looking for match - when found add to result
    for i in 0..<B.count {
        if B[i].contains(P) {
            result.append(A[i])
        }
    }
    
    if result.count == 0 {
        return "NO CONTACT"
    } else if  result.count == 1 {
        return result.first!
    }
    
    // sort and return first
    return result.sorted().first!
    
}


let A = ["pim", "pom"]
let B = ["999999999", "777888999"]
let P = "88999"


solution(A: A, B: B, P: P) // pom
solution(A:["sander", "amy", "ann"], B:["12345","23456","123"], P:"1") // ann
solution(A: ["ada,", "eva", "leo"], B: ["1212", "1111", "4444"], P: "112")   // NO CONTACT

// edge cases
solution(A: [String](), B: [String](), P: "")
solution(A: A, B: B, P: "")





