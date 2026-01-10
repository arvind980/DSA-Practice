import UIKit

//* Longest Repeating Character Replacement

func characterReplecement(s:String,k:Int)->(Int, String){
    let chars = Array(s)
    var freq = [Character: Int]()
    
    var maxfreq = 0
    var maxLength = 0
    var left = 0
    var start = 0
    
    for right in 0..<chars.count{
        let char = chars[right]
        
        freq[char , default: 0] += 1
    
        maxfreq = max(maxfreq, freq[char]!)
        
        while (right - left + 1) - maxfreq > k{
            let leftChar = chars[left]
            freq[leftChar]! -= 1
            left += 1
        }
        
        let windowLenght = right - left + 1
        
        if windowLenght > maxLength{
            maxLength = windowLenght
            start = left
        }
    }
    
    return (maxLength, String(chars[start..<start + maxLength]))
}

print(characterReplecement(s: "AABABBA", k: 1))
