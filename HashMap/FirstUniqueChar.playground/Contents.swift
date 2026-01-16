import UIKit

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
 


let st = "ddffg"

print("Char index:",firstUniqueChar(s: st))

//⏱️ Complexity
//Time    O(n)
//Space    O(1) (26 letters max)
