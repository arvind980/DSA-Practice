import UIKit

// Check link list has cycle

class listNode{
    var value:Int?
    var next:listNode?
    init(_ value:Int){
        self.value = value
    }
}

func hasCycle(_ head:listNode?)->(Bool,Int?){
    var slow = head
    var fast = head
    
    while fast != nil && fast?.next != nil{
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow === fast{
            
            var pointer = head
             
            while pointer !== slow{
                pointer = pointer?.next
                slow = slow?.next
            }
            
            return (true,pointer?.value)
        }
    }
    
    return (false,nil)
}


func creatLinkList(_ values:[Int])->listNode?{
    guard !values.isEmpty else { return nil}
    var head = listNode(values[0])
    var current = head
    
    for i in 1..<values.count{
        current.next = listNode(values[i])
        if let next = current.next{
            current = next
        }
    }
    
    return head
}


func createCycle(_ head:listNode?,position:Int){
    guard position >= 0 else {return}
    
    var tail = head
    var cycleNode:listNode?
    var index = 0
    var current = head
    
    while current != nil {
        if index == position{
            cycleNode = current
        }
        tail = current
        current = current?.next
        index += 1
    }
    
    tail?.next = cycleNode
}

var linkList = creatLinkList([2,3,4,5,6,7,8])
print(hasCycle(linkList))
createCycle(linkList, position: 3)
print(hasCycle(linkList))
