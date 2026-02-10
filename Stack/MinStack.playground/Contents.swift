import UIKit

class MinStack<T:Comparable>{
    private var stack : [(value:T, min:T)] = []
    
    func push(_ value:T){
        let minValue = stack.last?.min ?? value
        stack.append((value,min(minValue,value)))
    }
    
    func pop(){
        guard !stack.isEmpty else {return}
        stack.removeLast()
    }
    
    func top()->T?{
        return stack.last?.value
    }
    
    func getMin()->T?{
        return stack.last?.min
    }
}

let stack = MinStack<String>()
stack.push("aa")
stack.push("sswq")
stack.push("sswwwq")
stack.push("rr")
print(stack.getMin())
