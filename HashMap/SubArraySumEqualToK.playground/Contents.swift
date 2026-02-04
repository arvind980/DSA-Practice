import UIKit
//
//func subArraySumEqualToK(nums:[Int],k:Int)->Int{
//    var count = 0
//    var map = [Int: Int]()
//    var prefixSum = 0
//    map[0] = 1
//    
//    for num in nums{
//        prefixSum += num
//        
//        if let freq = map[prefixSum - k]{
//            count += freq
//        }
//        
//        map[prefixSum, default: 0] += 1
//    }
//    
//    return count
//}

//print(subArraySumEqualToK(nums: [1, 2, 1, 2, 1], k: 3))


// Return array

func subArraySumEqualToK(nums:[Int],k:Int)->[[Int]]{
    var count = 0
    var result = [[Int]]()
    var map = [Int: [Int]]()
    var prefixSum = 0
    map[0] = [-1]
    
    for i in 0..<nums.count{
        prefixSum += nums[i]
        let needed = prefixSum - k
        if let indices = map[needed]{
            for index in indices{
                result.append(Array(nums[(index + 1)...i]))
            }
        }
        
        map[prefixSum, default: []].append(i)
    }
    
    return result
}

print(subArraySumEqualToK(nums: [1, 2, 1, 2, 1], k: 3))
