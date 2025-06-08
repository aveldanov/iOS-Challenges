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

/*
 Challenge 6: Remove duplicate
 letters from a string
 Difficulty: Easy
 Write a function that accepts a string as its input, and returns the same string just with
 duplicate letters removed.
 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather
 than “easy”.
 Sample input and output
 • The string “wombat” should print “wombat”.
 • The string “hello” should print “helo”.
 • The string “Mississippi” should print “Misp”.
 */

//func challenge6(_ inputString: String) -> String {
//    
//    var arr: [Character] = Array()
//    
//    
//    for i in inputString {
//        if arr.contains(i) {
//            continue
//        } else {
//            arr.append(i)
//        }
//    }
//
//    return String(arr)
//}


//func challenge6(_ inputString: String) -> String {
//    var seen = Set<Character>()
//    
//    let result = inputString.filter {
//        if seen.contains($0) {
//            return false
//        } else {
//            seen.insert($0)
//            return true
//        }
//    }
//
//    return String(result)
//}
//
//challenge6("Mississippi")


/*
 Challenge 7: Condense
 whitespace
 Difficulty: Easy
 Write a function that returns a string with any consecutive spaces replaced with a single space.
 Sample input and output
 I’ve marked spaces using “[space]” below for visual purposes:
 • The string “a[space][space][space]b[space][space][space]c” should return
 “a[space]b[space]c”.
 • The string “[space][space][space][space]a” should return “[space]a”.
 • The string “abc” should return “abc”.
 */

//
//func challenge7(_ inputString: String) -> String {
//    
//    var result: String = ""
//    var spaceSeen: Bool = false
//    
//    for item in inputString {
//        if item == " " && spaceSeen {
//            continue
//        }else if item == " " {
//            spaceSeen = true
//        } else {
//            spaceSeen = false
//        }
//        
//        result.append(item)
//    }
//    
//    print(result)
//    return result
//}
//
//challenge7("     a   b   c    ")

/*
Challenge 8: String is rotated
Difficulty: Tricky
Write a function that accepts two strings, and returns true if one string is rotation of the other,
taking letter case into account.
Tip: A string rotation is when you take a string, remove some letters from its end, then append
them to the front. For example, “swift” rotated by two characters would be “ftswi”.
Sample input and output
• The string “abcde” and “eabcd” should return true.
• The string “abcde” and “cdeab” should return true.
• The string “abcde” and “abced” should return false; this is not a string rotation.
*/

//this is mirrored
//func challenge8(_ string1: String, _ string2: String) -> Bool {
//    return string1.reduce(""){ String($1) + $0} == string2
//}


//func challenge8(_ string1: String, _ string2: String) -> Bool {
//    
//    return (string1+string1).contains(string2) && string1.count == string2.count
//}
//
//challenge8("abc", "a")



/*
 
 Challenge 9: Find pangrams
 Difficulty: Tricky
 Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 */


//func challenge9(_ input: String) -> Bool {
//    let set = Set(input.lowercased())
//    let letters = set.filter { $0 >= "a" && $0 <= "z" }
//    return letters.count == 26
//}

//func challenge9(_ input: String) -> Bool {
//    Set(input.lowercased().filter { $0.isLetter }).count == 26
//}
//
//
//
////challenge9("The quick brown fox jumps over the lazy dog")
//challenge9("The quick brown fox jumped over the lazy dog")

/*
Challenge 10: Vowels and
consonants
Difficulty: Tricky
Given a string in English, return a tuple containing the number of vowels and consonants.
Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
*/


//func challenge10(_ input: String) -> (vowels: Int, consonants: Int) {
//    let vowels = Set("aeiou")
//    let letters = input.lowercased().filter { $0.isLetter }
//    
//    let vowelCount = letters.filter { vowels.contains($0) }.count
//    let consonantCount = letters.count - vowelCount
//    
//    return (vowelCount, consonantCount)
//}
////
//challenge10("Mississippi")


/*
 Challenge 11: Three different
 letters
 Difficulty: Tricky
 Write a function that accepts two strings, and returns true if they are identical in length but
 have no more than three different letters, taking case and string order into account.
 Sample input and output
 • The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
 • The strings “Clamp” and “Crams” would return true, because there are two letter
 differences.
 • The strings “Clamp” and “Grams” would return true, because there are three letter
 differences.
 • The strings “Clamp” and “Grans” would return false, because there are four letter
 differences.
 • The strings “Clamp” and “Clam” would return false, because they are different lengths.
 • The strings “clamp” and “maple” should return false. Although they differ by only one
 letter, the letters that match are in different positions.
 
 */

//func challenge11(_ str1: String, _ str2: String) -> Bool {
//    if str1.count != str2.count {
//        return false
//    }
//    
//    var arr1 = Array(str1)
//    var arr2 = Array(str2)
//    
//    var count = 0
//    
//    for (index, char) in str1.enumerated() {
//        if arr1[index] != arr2[index] {
//            count += 1
//            if count > 3 {
//                return false
//            }
//        }
//        
//    }
//    
//    return true
//}

func challenge11(_ string1: String, _ string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    
    let differences = zip(string1, string2).filter { $0 != $1 }.count
    return differences <= 3
}

challenge11("Clamp", "Cramp")
challenge11("Clamp", "Crams")
challenge11("Clamp", "Grams")
challenge11("Clamp", "Grans")
challenge11("Clamp", "Clam")
challenge11("clamp", "maple")


/*
 Challenge 12: Find longest prefix
 Difficulty: Tricky
 Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.
 Sample input and output
 • The string “swift switch swill swim” should return “swi”.
 • The string “flip flap flop” should return “fl”.
 */

//
//func challenge12(_ input: String) -> String {
//    let words = input.components(separatedBy: " ")
//    guard let firstWord = words.first else { return "" }
//    
//    var prefix = firstWord
//    
//    for word in words {
//        while !word.hasPrefix(prefix) && !prefix.isEmpty {
//            prefix.removeLast()
//        }
//    }
//    return prefix
//}
//
//func challenge12(input: String) -> String {
//    let parts = input.components(separatedBy: " ")
//    guard let first = parts.first else { return "" }
//    
//    var currentPrefix = ""
//    var bestPrefix = ""
//    
//    for letter in first {
//        currentPrefix.append(letter) // sw
//        
//        for word in parts {
//            if !word.hasPrefix(currentPrefix) {
//                return bestPrefix
//            }
//        }
//        
//        bestPrefix = currentPrefix // sw
//    }
//    
//    return bestPrefix
//}


//
//challenge12("swift switch swill swim")
////challenge12( "flip flap flop")


/*
 Challenge 13: Run-length
 encoding
 Difficulty: Taxing
 Write a function that accepts a string as input, then returns how often each letter is repeated in
 a single run, taking case into account.
 Tip: This approach is used in a simple lossless compression technique called run-length
 encoding.
 Sample input and output
 • The string “aabbcc” should return “a2b2c2”.
 • The strings “aaabaaabaaa” should return “a3b1a3b1a3”
 • The string “aaAAaa” should return “a2A2a2”
 */

func runLengthEncode(_ input: String) -> String {
    var result = ""
    var currentChar: Character?
    var count = 0

    for char in input {
        if char == currentChar {
            count += 1
        } else {
            // for the first cycle when curentChar is empty
            if let currentChar = currentChar {
                result += "\(currentChar)\(count)"
            }
            currentChar = char
            count = 1
        }
    }
    // Append the last run
    if let currentChar = currentChar {
        result += "\(currentChar)\(count)"
    }

    return result
}


challenge13( "aabbcc")
//challenge13( "aaabaaabaaa")
//challenge13( "aaAAaa")
