import Foundation


/*
 
 Write a function that accepts a String as its only parameter, and returns true if the string has
 only unique letters, taking letter case into account.
 
 */



//func challenge1(input: String) -> Bool {
//    var unqueLetters: Set<Character> = []
//    
//    for i in input {
//        if unqueLetters.contains(i) {
//            return false
//        }
//        print(i)
//        unqueLetters.insert(i)
//    }
//    
//    return true
//}

//func challenge1(input: String) -> Bool {
//
//    print(Set(input).count, input.count)
//    
//    return Set(input).count == input.count
//}
//
//
//
//challenge1(input: "Helo")


//assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
//assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
//assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
//assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")


/*
 
 Challenge 2: Is a string a
 palindrome?
 
 Write a function that accepts a String as its only parameter, and returns true if the string reads
 the same when reversed, ignoring case.
 Sample input and output
 • The string “rotator” should return true.
 • The string “Rats live on no evil star” should return true.
 • The string “Never odd or even” should return false; even though the letters are the same in
 reverse the spaces are in different places.
 • The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.
 
 */

//func challenge2(input: String) -> Bool {
//    
//    let arr = Array(input)
//    
//
//    return arr == arr.reversed()
//}
//
//
//challenge2(input: "abbaa")

/*
 Challenge 3: Do two strings
 contain the same characters?
 Difficulty: Easy
 Write a function that accepts two String parameters, and returns true if they contain the same
 characters in any order taking into account letter case.
 Sample input and output
 • The strings “abca” and “abca” should return true.
 • The strings “abc” and “cba” should return true.
 • The strings “ a1 b2 ” and “ b1 a2 ” should return true.
 • The strings “abc” and “abca” should return false.
 • The strings “abc” and “Abc” should return false.
 • The strings “abc” and “cbAa” should return false.
 • The strings “abcc” and “abca” should return false.
 */

//func challenge3(input1: String, input2: String) -> Bool {
//    let arr1 = Array(input1).sorted()
//    let arr2 = Array(input2).sorted()
//    
//    return arr1 == arr2
//    
//}
//
//challenge3(input1: "aabc", input2: "cbaa")


/*
 Challenge 4: Does one string
 contain another?
 Difficulty: Easy
 Write your own version of the contains() method on String that ignores letter case, and
 without using the existing contains() method.
 Sample input and output
 • The code "Hello, world".fuzzyContains("Hello") should return true.
 • The code "Hello, world".fuzzyContains("WORLD") should return true.
 • The code "Hello, world".fuzzyContains("Goodbye") should return false.
 
 */


//
//extension String {
//    func fuzzyContains(_ string: String) -> Bool {
//
//        return self.uppercased().range(of: string.uppercased()) != nil
//    }
//}
//
//"Hello, world".fuzzyContains("Hello")
//

//
//extension String {
//    func fuzzyContains(_ string: String) -> Bool {
//
//        return self.uppercased().range(of: string.uppercased()) != nil
//    }
//}
//
//"Hello, world".fuzzyContains("Hello")
//
//
//extension String {
//    func fuzzyContains(_ string: String) -> Bool {
//        return range(of: string, options: .caseInsensitive) !=
//        nil
//    }
//}



/*
 Challenge 5: Count the characters
 Difficulty: Easy
 Write a function that accepts a string, and returns how many times a specific character appears,
 taking case into account.
 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
 Sample input and output
 • The letter “a” appears twice in “The rain in Spain”.
 • The letter “i” appears four times in “Mississippi”.
 • The letter “i” appears three times in “Hacking with Swift”.
 */


//func challenge5(_ inputString: String, _ characterToCount: Character) -> Int {
//    
//    var count = 0
//    
//    for i in inputString {
//        if i == characterToCount {
//            count += 1
//        }
//    }
//    
//    return count
//}

//func challenge5(_ inputString: String, _ characterToCount: Character) -> Int {
//    
//    return inputString.filter{$0 == characterToCount}.count
//}
//
//
//
//challenge5("The rain in Spain", "n")
//    
