import UIKit

class listNode{
    var value:Int?
    var next:listNode?
    init(_ value:Int){
        self.value = value
    }
}

func findMiddel(_ head:listNode?)->listNode?{
    
    var slow = head
    var fast = head
    
    while fast != nil && fast?.next != nil{
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    return slow
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


var linkList = creatLinkList([2,3,4,5,6,7,3,6])
if let middel = findMiddel(linkList)?.value{
    print(middel)
}

