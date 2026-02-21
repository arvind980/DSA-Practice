import UIKit

func houseRob(_ nums:[Int])->Int{
    var pre1 = 0
    var pre2 = 0
    
    for num in nums{
        let current = max(pre1 , pre2 + num)
        pre2 = pre1
        pre1 = current
    }
    return pre1
}


print(houseRob([2,7,9,3,1]))

/*
 Problem            Time    Space (DP array)    Space (Optimized)
 Climbing Stairs    O(n)       O(n)                    O(1)
 House Robber       O(n)       O(n)                    O(1)

 */
