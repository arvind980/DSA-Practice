import UIKit

func knapsack(_ weights:[Int],_ values:[Int],_ capacity:Int)->Int{
    let n = weights.count
    
    var dp = Array(repeating: Array(repeating: 0, count: capacity + 1), count: n + 1)
    
    for i in 1...n{
        for w in 0...capacity{
            if weights[i - 1] <= w{
                dp[i][w] = max(dp[i - 1][w], dp[i - 1][w - weights[i - 1]] + values[i - 1])
            }else{
                dp[i][w] = dp[i - 1][w]
            }
        }
    }
    
    return dp[n][capacity]
}

print(knapsack([1, 3, 4], [15, 20, 30], 4))
