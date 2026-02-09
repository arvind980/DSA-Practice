import UIKit

func nextGreaterElements(nums:[Int])->[Int]{
    var result = Array(repeating: -1, count: nums.count)
    var stack = [Int]()
    
    for i in 0..<nums.count{
        while let last = stack.last, nums[i] > nums[last]{
            let index = stack.removeLast()
            result[index] = nums[i]
        }
        
        stack.append(i)
    }
    
    return result
}

print(nextGreaterElements(nums: [2,1,2,4,3]))


