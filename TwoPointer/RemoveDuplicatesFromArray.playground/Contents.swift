import UIKit

//func removeDuplicatesFromSortedArray(nums:inout[Int])->Int{
//    guard !nums.isEmpty else { return 0 }
//    var left = 0
//    
//    for right in 1..<nums.count{
//        if nums[right] != nums[left]{
//            left += 1
//            nums[left] = nums[right]
//        }
//    }
//    
//    return left + 1
//}
//
//var arr = [1,1,3,4,4,6,6,7,7,8]
//
//print(removeDuplicatesFromSortedArray(nums: &arr))
//print(arr)

/*
 ⏱️ Complexity

 Time: O(n)

 Space: O(1)
 */

//UnSorted array and Order preserved
func removeDuplicatesWithOrderPreserved(nums:[Int])->[Int]{
    var seen = Set<Int>()
    var result = [Int]()
    
    for num in nums{
        if !seen.contains(num){
            seen.insert(num)
            result.append(num)
        }
    }
    
   return result
}

print(removeDuplicatesWithOrderPreserved(nums: [2,3,1,3,4,1,6,4,7,5,3,1,5,6]))

/*
 Complexity

 Time: O(n)

 Space: O(n) (Set + result array)
 */
