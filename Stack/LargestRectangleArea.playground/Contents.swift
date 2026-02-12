import UIKit

func largestRectangleArea(heights:[Int])->Int{
    var heights = heights
    heights.append(0)
    
    var stack = [Int]()
    var maxArea = 0
    
    for i in 0..<heights.count{
        while let last = stack.last, heights[i] < heights[last]{
            let height = heights[stack.removeLast()]
            var width:Int
            if stack.isEmpty{
                width = i
            }else{
                width = i - stack.last! - 1
            }
            
            maxArea = max(maxArea, height * width)
        }
        
        stack.append(i)
    }
    
    return maxArea
}

print(largestRectangleArea(heights: [2, 1, 5, 6, 2, 3]))


/*
 
 Complexity Analysis
 Metric    Value
 Time    O(n)
 Space    O(n)
 
 */
