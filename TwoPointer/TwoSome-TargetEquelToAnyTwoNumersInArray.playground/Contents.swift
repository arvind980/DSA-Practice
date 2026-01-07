import UIKit

//func twoSumFromSortedArr(nums:[Int],target:Int)->[Int]{
//     var left = 0
//     var right = nums.count - 1
//    
//    while left < right{
//        let comp = nums[left] + nums[right]
//        
//        if comp == target{
//            return [nums[left], nums[right]]
//        }else if target > comp{
//            left += 1
//        }else{
//            right -= 1
//        }
//    }
//    
//    return []
//}
//
//print(twoSumFromSortedArr(nums: [2,4,5,7,8,9], target: 12))


func twoSumFromUnSortedArray(nums:[Int],target:Int)->[Int]{
    var map:[Int:Int] = [:]

    for (i,num) in nums.enumerated(){
        let comp = target - num
        
        if let compIndex = map[comp]{
            return [num, comp]
        }
        map[num] = i
    }
   return []
}

print(twoSumFromUnSortedArray(nums: [2,4,5,7,8,9], target: 17))
