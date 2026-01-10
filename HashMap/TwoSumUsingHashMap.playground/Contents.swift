import UIKit

func twoSum(nums:[Int],target:Int)->[Int]{
    var map = [Int: Int]()
    
    for (i ,num) in nums.enumerated(){
        let comp = target - num
        
        if let _ = map[comp]{
            return [num, comp]
        }
        map[num] = i
    }
    
    return []
}

print(twoSum(nums:[2,4,3,1,6,5,7,9,8],target: 16))
