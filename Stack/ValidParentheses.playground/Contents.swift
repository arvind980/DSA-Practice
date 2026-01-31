import UIKit

func validParentheses(str:String)->Bool{
    var stack = [Character]()
    
    let maping: [Character:Character] = [")":"(","]":"[","}":"{"]
    
    for char in str{
        if char == "("  || char == "{"  || char == "[" {
            stack.append(char)
        }else{
            if stack.isEmpty || stack.popLast() != maping[char]{
                return false
            }
        }
    }
    
    return stack.isEmpty
}

print(validParentheses(str:"{{[]}}"))

/*
 Time
 O(n)

 Each character is pushed and popped once

 Space
 O(n)
 */
