import UIKit

/* Longest subarray with sum = K
 
 Given an array nums (can contain negative numbers) and an integer k,
 return the length of the longest contiguous subarray whose sum equals k.
 
*/

func longestSubArrayWithSumOf_K(nums:[Int],k:Int)->[Int]{
    var map = [Int:Int]()
    map[0] = -1
    var prefixSum = 0

    var start = 0
    var maxLenght = 0
    
    for i in 0..<nums.count{
        prefixSum += nums[i]
        
        if let startIndex = map[prefixSum - k]{
            let lenght = i - startIndex
            
            if lenght > maxLenght{
                maxLenght = lenght
                start = startIndex + 1
            }
        }
        
        if map[prefixSum] == nil{
            map[prefixSum] = i
        }
    }
    
    return Array(nums[start..<start + maxLenght])
}

print(longestSubArrayWithSumOf_K(nums:[4, 5 , 1, -1, 5, -2, 3],k: 3))

/*
 Case 1️⃣: Return ONLY the length
          ✅ Total Time: O(n)
          ✅ Space: O(n)
 Case 2️⃣: Return the actual subarray
          ✅ Total Time: O(n + L) → O(n) where Copying subarray → O(L), L = lenght
          ✅ Space: O(n) -> HashMap → O(n) , array → O(L)
 */
