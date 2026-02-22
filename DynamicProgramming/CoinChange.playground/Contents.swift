import UIKit

func coinChange(_ coins:[Int],_ amt:Int)->Int{
    guard amt > 0 else {return 0}
    var dp = Array(repeating: amt + 1, count: amt + 1)
    dp[0] = 0
    
    for i in 1...amt{
        for coin in coins{
            if coin <= i{
                dp[i] = min(dp[i], dp[i - coin] + 1)
            }
        }
    }
    
    return dp[amt] > amt ? -1 : dp[amt]
}

print(coinChange([1,2,5], 22))

/*
 Type    Complexity
 Time    O(n × A)
 Space    O(A)
 */
