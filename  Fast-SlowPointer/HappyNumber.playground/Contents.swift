import UIKit

func sumOfSquare(n:Int)->Int{
    var sum = 0
    
    var num = n
    while num != 0{
        let digit = num%10
        sum += digit * digit
        num = num/10
    }
    return sum
}

func isHappyNumber(n:Int)->Bool{
    var slow = n
    var fast = n
    
    repeat{
        slow = sumOfSquare(n: slow)
        fast = sumOfSquare(n: sumOfSquare(n: fast))
    } while slow != fast
    
    return slow == 1
}

print(isHappyNumber(n: 19))

