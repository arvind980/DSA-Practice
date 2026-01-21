import UIKit

func numSubArrayProductLessThanK(nums:[Int], k:Int)->(Int,[[Int]]){
    guard k > 1 else { return (0, [[]]) }
    var result = [[Int]]()
    var count = 0
    var left = 0
    var product = 1
    
    for right in 0..<nums.count{
        product *= nums[right]
        
        if product >= k{
            product /= nums[left]
            left += 1
        }
        
        count += right - left + 1
        var arr = [Int]()
        for i in stride(from: right, to: left, by: -1){
            arr.append(nums[i])
            result.append(arr)
        }
    }
    
    return (count, result)
}

print(numSubArrayProductLessThanK(nums: [10, 5, 2, 6], k: 100))

