import UIKit

// fixed size window

func maxSumSubarray(nums:[Int],k:Int)->(Int,[Int]){
    guard nums.count >= k else { return (0, []) }
   
    var windowSum = 0
    var maxSum = 0
    var start = 0
    
    for i in 0..<nums.count{
        windowSum += nums[i]
        
        if i >= k - 1{
            if windowSum > maxSum{
                maxSum = windowSum
                start = i - k + 1
            }
            
            windowSum -= nums[i - k + 1]
        }
    }
    
    return (maxSum, Array(nums[start..<start + k]))
}

print(maxSumSubarray(nums:[2,4,5,6],k:3))

// Complexity
// Time O(n)
// space if return array the O(k) else O(1)
