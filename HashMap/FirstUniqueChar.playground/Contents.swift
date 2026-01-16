import UIKit

/*
// Using Hashmap and and chars frequence
 
func firstUniqueChar(s:String)->Int{
    var map = [Character:Int]()
    var charArr = Array(s)
    for char in 0..<charArr.count{
        map[charArr[char], default: 0] += 1
    }
    
    for i in 0..<charArr.count{
        if map[charArr[i]] == 1{
            return i
        }
    }
    
    return -1
}
 
 */

// Optimise version Using Hashmap and chars asscii value index

func firstUniqueChar(s:String)->Int{
    let chars = Array(s)
    var count = Array(repeating: 0, count: 26)
    
    for i in 0..<chars.count{
        let index = Int(chars[i].asciiValue! - Character("a").asciiValue!)
        count[index] += 1
    }
    
    for i in 0..<chars.count{
        let index = Int(chars[i].asciiValue! - Character("a").asciiValue!)
        if count[index] == 1{
            return i
        }
    }
    
    return -1
}



let st = "ddffg"

print("Char index:",firstUniqueChar(s: st))

//⏱️ Complexity
//Time    O(n)
//Space    O(1) (26 letters max)
