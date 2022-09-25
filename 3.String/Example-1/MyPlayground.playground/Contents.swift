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

//

/*
let word = "Ugur Polat"

print("Character Count: \(word.count)");
*/

/*
// checking name start with 'S'

let nameArray = ["Sam","Samatha","George","Phil"]
for name in nameArray where name.hasPrefix("S"){
    print(name);
}

// checking last word

let fileName = "Example_1.swift";

if fileName.hasSuffix(".swift") {
    print("This is a swift file.")
} else {
    print("This is not swift file.")
}

// Getting a new string from a string

let str = "Merhaba Swift Taylor"

let start = str.index(str.startIndex,offsetBy: 14)
let finish = str.index(str.startIndex,offsetBy: 20);

let name = str[start..<finish]
print(name)

 

let str = "Hello Swift!"

let first = str[str.startIndex]  // H
let last = str[str.index(before: str.endIndex)]; // !
let second = str[str.index(after: str.startIndex)]; // e
let i =  str.index(str.startIndex, offsetBy: 8);
let search = str[i]
let takeWord = str[..<i]

print(first,last,second);
print(search,takeWord);

 */

/*
let stars = "*,**,***,****"
let c = stars.split(separator: ",")

for x in c {
    print(x,"\t")
}

var t = "Swift"
print("Original: \(t)")

if let cut = t.range(of: "w") {
    t.replaceSubrange(cut, with: "v")
}

t.insert("!", at: t.endIndex )

*/

/*
// Delete

var str = "Swift"
print(str)
for _ in str {
    str.remove(at: str.index(before: str.endIndex))
    print(str)
}


var str2 = "Swift"
let range = str.index(str.endIndex, offsetBy: -str.count)..<str.endIndex
str.removeSubrange(range)
print(Array(str))

*/


/*
var sArray = ["Sema","Salih","Eren","Gamze","Selim"]

let delete_1 = sArray.removeLast() // Selim
print(sArray)

let delete_2 = sArray.removeFirst() // Sema
print(sArray)

*/


/*
let string = "This is a sample word."
let vowels = "aeiou"
let consonants = "b,c,d,f,g,j,k,l,m,n,p,q,s,t,v,x,z,h,r,w,y"
var vowelsCount = 0
var consonantsCount = 0

for c in string.lowercased() {
    if vowels.contains(c) {
        vowelsCount += 1;
    }
    else if consonants.contains(c) {
        consonantsCount += 1
    }
}

print(string.count);
print(vowelsCount);
print(consonantsCount);

// string reversed

let name = "ugur";

for i in name.reversed() {
    print(i, terminator: "")
}

 */


// Check palindrome

func palindrome (str: String) -> Bool {
    let kStr = str.lowercased();
    return kStr.reversed() == Array(kStr)
}


let name = "Kayak"
if palindrome(str: name) == true {
    print("True")
} else {
    print(false)
}















































































