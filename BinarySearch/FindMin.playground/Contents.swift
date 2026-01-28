import UIKit

func findMin(nums:[Int])->Int{
    var left = 0
    var right = nums.count - 1
    
    while left < right{
        var mid = left + (right - left)/2
        
        if nums[mid] > nums[right]{
            left = mid + 1
        }else{
            right = mid - 1
        }
    }
    
    return nums[left]
}

print(findMin(nums:[2,3,5,7,9,12,22]))

/*
 ⏱️ Complexity
 Time    O(log n)
 Space    O(1)
 */
