import UIKit

func longestSubStringWithoutRepeatChars(s:String)->(Int, String){
    let chars = Array(s)
    var seen = Set<Character>()
    var left = 0
    var maxLenght = 0
    var start = 0
    
    for right in 0..<chars.count{
        if seen.contains(chars[right]){
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
