import UIKit

func climbingStairs(_ n:Int)->Int{
    guard n > 2 else {return n}
    
    var pre1 = 1
    var pre2 = 2
    
    for _ in 3...n{
        let current = pre1 + pre2
        pre2 = pre1
        pre2 = current
    }
    
    return pre2
}

func climbingStairsDP(_ n:Int)->Int{
    guard n > 2 else {return n}
    var dp = Array(repeating:0 , count: n + 1)
    dp[1] = 1
    dp[2] = 2
    
    for i in 3...n{
        dp[i] = dp[i - 1] + dp[i - 2]
    }
    return dp[n]
}

print(climbingStairsDP(5))

/*
 Problem            Time    Space (DP array)    Space (Optimized)
 Climbing Stairs    O(n)       O(n)                    O(1)
 House Robber       O(n)       O(n)                    O(1)

 */
