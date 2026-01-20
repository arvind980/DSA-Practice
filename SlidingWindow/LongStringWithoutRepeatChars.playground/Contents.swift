import UIKit

//1 - Using Set

func longestSubStringWithoutRepeatChars(s:String)->(Int, String){
    let chars = Array(s)
    var seen = Set<Character>()
    var left = 0
    var maxLenght = 0
    var start = 0
    
    for right in 0..<chars.count{
        
        while seen.contains(chars[right]){
            seen.remove(chars[left])
            left += 1
        }
        
        seen.insert(chars[right])
        var currLenght = right - left + 1
        
        if currLenght > maxLenght{
            maxLenght = currLenght
            start = left
        }
    }
    
    return (maxLenght, String(chars[start..<start + maxLenght]))
}


print(longestSubStringWithoutRepeatChars(s: "ababbcade"))

// Using Dictinary

//func longestSubStringWithoutRepeatChars(s:String)->(Int, String){
//    let chars = Array(s)
//    var dict = [Character : Int]()
//    var left = 0
//    var maxLenth = 0
//    var start = 0
//    
//    for right in 0..<chars.count{
//        let char = chars[right]
//        
//        if let charsIndex = dict[char]{
//            left = max(left, charsIndex + 1)
//        }
//        
//        dict[char] = right
//        
//        var currLen = right - left + 1
//        
//        if currLen > maxLenth{
//            maxLenth = currLen
//            start = left
//        }
//    }
//    
//    return (maxLenth, String(chars[start..<start + maxLenth]))
//}
//
//print(longestSubStringWithoutRepeatChars(s: "ababbcade"))

//⏱️ Complexity
//Time    O(n)
//Space    O(min(n, charset))
