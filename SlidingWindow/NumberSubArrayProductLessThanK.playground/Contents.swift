import UIKit

func numSubArrayProductLessThanK(nums:[Int], k:Int)->Int{
    guard k > 1 else { return 0 }
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
    }
    
    return count
}

print(numSubArrayProductLessThanK(nums: [10, 5, 2, 6], k: 100))

