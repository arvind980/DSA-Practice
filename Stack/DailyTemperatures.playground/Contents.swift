import UIKit

func dailyTemperatures(nums:[Int])->[Int]{
    var result = Array(repeating: 0, count: nums.count)
    var stack = [Int]()
    
    for i in 0..<nums.count{
        while let last = stack.last, nums[i] > nums[last]{
            let prevIndex = stack.removeLast()
            result[prevIndex] = i - prevIndex
        }
        stack.append(i)
    }
    
    return result
}

print(dailyTemperatures(nums: [73, 74, 75, 71, 69, 72, 76, 73]))

/*
 🧮 Complexity
 Metric    Value
 Time    O(n)
 Space    O(n) (stack)
 
 */
