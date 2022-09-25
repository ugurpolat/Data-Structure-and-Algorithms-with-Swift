import UIKit
/*
    let k = "!"
    let s = "snow"
    let s: String = "Kar"
    var emptyS = ""
    var emptyString2 = String()
 
    If you add more then one line
        let str = """
                    one
                    two
                    three
                  """

 */
/*

let kA = "Swift";
let kB = " Programming"
var kC = kA + kB;
print(kC)

let kD = " is easy";
kC.append(kD)
print(kC)
*/

/*
let num = 3
let message = "\(num) * 5 = \(Double(num) * 5)"
print(message)
*/

/*
let cArray:[Character] = ["H","o","n","e","y"];  // Data type: Array<Character>
let sArray:[String] = ["Apple","Microsoft","Meta","alphabet"]; // Data type: Array<String>

let k = Array("Swift"); // Data type: Array<Character>
print(k);   // ["S", "w", "i", "f", "t"]

let kArray: [Character] = ["A","r","r","a","y"];
let word = String(kArray);
print(word); // Array

for i in "Array" {
    print(i);
    // A
    // r
    // r ...
}
*/

/*
// Checking, is it a String?

var a: Any = "1881"

if a is String {
    print("Yes, it is a string.")
} else {
    print("No, it is not a string.")
}

// Control a spesific character||string in a string

let str = "Hello swift"
let search:Character = "o"

if str.contains(search) {
    print("Found it!");
} else {
    print("Maybe next time:(");
}

func testWord(cumle: String, k: Character)->Int {
    
    var numCharacter = 0
    for lett in cumle {
        if lett == k {
            numCharacter += 1;
        }
    }
    return numCharacter;
}

var temp: Int = testWord(cumle: "Hello World!", k: "l");
print(temp)
*/

/*
var counter = 0
let password = readLine()

while(false){
    print("Password:")
    let password = readLine();
    
    if password == "apple" {
        print("Correct.")
        break
    }
    
    counter += 1;
    
    if (counter >= 3) {
        print("You are dead.")
    }
}
*/

/*
// check word

let str = "Hello, Taylor Swift"
let word = "Swift"

if str.range(of: word) != nil {
    print("Yes,\(word)")
} else {
    print("Sorry:(")
}
*/

/*
// Is string empty

let str = ""

if str.isEmpty {
    print("Yes, String is empty.")
} else {
    print("No, there is a character")
}
*/
