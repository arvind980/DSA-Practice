import UIKit

func maxArea(hight:[Int])->Int{
    var left = 0
    var right = hight.count - 1
    var maxAraea = 0
    
    while left < right {
        let width = right - left
        let currHight = min(hight[left], hight[right])
        let area = width * currHight
        maxAraea = max(maxAraea, area)
        
        if hight[left] < hight[right]{
            left += 1
        }else{
            right -= 1
        }
    }
    
    return maxAraea
}

print(maxArea(hight: [1,8,6,2,5,4,8,3,7]))
