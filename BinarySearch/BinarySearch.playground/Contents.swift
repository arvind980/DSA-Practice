import UIKit

var greeting = "Hello, playground"

func binarySearch(nums:[Int],target:Int)->Int{
    var left = 0
    var right = nums.count - 1
    
    while left < right{
        let mid = left + (right - left)/2
        if nums[mid] == target{
            return mid
        }else if nums[mid] < target{
            left = mid + 1
        }else{
            right = mid - 1
        }
    }
    
    return -1
}

print(binarySearch(nums: [3,4,5,6,7,9], target: 3))
