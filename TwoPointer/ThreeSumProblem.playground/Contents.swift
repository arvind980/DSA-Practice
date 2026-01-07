import UIKit

// arr[i] + arr[i+1] + arr[n-1] == 0

func threeSum(nums:[Int])->[[Int]]{
    let sort = nums.sorted()
    let n = sort.count
    var result = [[Int]]()
    
    for i in 0..<n-2{
        var left = 0
        var right = n - 1
        
        if i > 0 && sort[i] == sort[i - 1]{
            continue // skip duplicate and move next
        }
        
        if sort[i] > 0{ break } // Optional
         
        let minSum = sort[i] + sort[i+1] + sort[i+1]
        
        if minSum > 0 { break } // Optional
        
        let maxSum = sort[i] + sort[n-1] + sort[n-2]
        if maxSum < 0 { continue } // Optional
        
        while left < right{
            let sum = sort[i] + sort[left] + sort[right]
            if sum == 0{
                result.append([sort[i],sort[left],sort[right]])
                 
                while left < right && sort[left] == sort[left+1]{
                    left += 1
                }
                
                while left < right && sort[right] == sort[right-1]{
                    right += 1
                }
                
                left += 1
                right -= 1
            }else if sum < 0{
               left += 1
            }else{
                right -= 1
            }
        }
    }
    
    return result
}

print(threeSum(nums: [-4,-1,-1,0,1,2]))
