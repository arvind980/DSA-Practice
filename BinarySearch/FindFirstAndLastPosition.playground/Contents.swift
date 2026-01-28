import UIKit

func findFirstAndLastIndex(nums:[Int],target:Int)->[Int]{
    func findFirts()->Int{
        var left = 0
        var right = nums.count - 1
        var ans = -1
        
        while left <= right{
            var mid = left + (right - left)/2
            
            if nums[mid] == target{
                ans = mid
                right = mid - 1
            }else if target > nums[mid]{
                left = left + 1
            }else{
                right = mid - 1
            }
        }
        
        return ans
    }
    
    func findLast()->Int{
        var left = 0
        var right = nums.count - 1
        var ans = -1
        
        while left <= right{
            var mid = left + (right - left)/2
            
            if nums[mid] == target{
                ans = mid
                left = mid + 1
            }else if target > nums[mid]{
                left = left + 1
            }else{
                right = mid - 1
            }
        }
        
        return ans
    }
    
    return [findFirts(), findLast()]
}

print(findFirstAndLastIndex(nums:[5,5,5,5,5,5,5,5,5,5,5,5],target:5))
