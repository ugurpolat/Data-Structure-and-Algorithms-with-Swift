import UIKit

/*
 Arrays can contain anything
 Arrays are of a fixed size
 Arrays support random access
 
 
 let ints = [Int]()
 let strings = [Strings]()
 let people = [Person]()
 
 Random Access -> Constant time O(1)
 
 Array Mechanism
 * Insert
 * Delete
 * Resize
 
 
 *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
 
 FOR THE INTERVIEW
 
 Fixed size
 RAndom access - O(1)
 Insert / Delete - O(n)
 Arrays can shrink and grow - O(n)
 Swift arrays handle heavy lifting for you
 
 */

// INSERT

/*
        0 1 2 3 4 5 6 7 8 9 -> Capacity
        a c d  size = 3
copy up a   c d ->
insert  a b c d size = 4
 
 insert(1,"b") -> Linear time O(n)
 
*/

//DELETE

/*
 
        0 1 2 3 4 5 6 7 8 9 -> Capacity
        a b c d
copy up a c d
insert  a b c d size = --

delete(1) -> Linear time O(n)
 
 */

/*
 
 add("e")   a b c d
 create x2  - - - - - - - -  -> New Array
 copy       a b c d - - - -  -> Copy into
 old > new  a b c d - - - -  -> Point to new
 insert     a b c d e - - -  -> Do insert

    O(n)
 */

struct Person {}

let ints = [Int]()
let strings = [String]()
let people = [Person]()

/*
var array = ["a","b","c","d"]
array.append("e");
print(array);
*/

let arrayOfSpecificSize = Array<Int>(repeating: 1, count: 10);

var array = ["a","b","c","d"]
array.remove(at: 1);
array.insert("u", at: 0);
array.append("e");
