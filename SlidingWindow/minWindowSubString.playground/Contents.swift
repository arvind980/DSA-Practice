import UIKit

func minWindowSubString(s:String,t:String)->String{
    let sArr = Array(s)
    let tArr = Array(t)
    
    var need = [Character: Int]()
    for char in tArr{
        need[char, default: 0] += 1
    }
    
    var required = need.count
    
    var have = [Character: Int]()
    var minLenth = Int.max
    var match = 0
    var start = 0
    var left = 0
    
    for right in 0..<sArr.count{
        let char = sArr[right]
        
        have[char, default: 0] += 1
        
        if let req = need[char], have[char] == req{
            match += 1
        }
        
        while match == required{
            let len = right - left + 1
            if len < minLenth{
                minLenth = len
                start = left
            }
            
            let leftChar = sArr[left]
            have[leftChar]! -= 1
            
            if let req = need[leftChar], have[leftChar]! < req{
                match -= 1
            }
            
            left += 1
        }
    }
    
    return minLenth == Int.max ? "" : String(sArr[start..<start + minLenth])
    
}

print(minWindowSubString(s: "ADOBECODEBANC", t: "ABC"))
