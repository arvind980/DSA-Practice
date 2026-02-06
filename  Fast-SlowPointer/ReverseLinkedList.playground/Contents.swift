import UIKit

class LinkNode{
    var value:Int?
    var next:LinkNode?
    init(_ value:Int){
        self.value = value
    }
}

func reverseLinkList(head:LinkNode?)->LinkNode?{
    var current = head
    var prev:LinkNode?
    
    while current != nil{
        var nextNode = current?.next
        current?.next = prev
        prev = current
        current = nextNode
    }
    
    return prev
}

func createList(_ values:[Int])->LinkNode?{
    guard !values.isEmpty else { return nil}
    var head = LinkNode(values[0])
    
    var current = head
    
    for i in 1..<values.count{
        current.next = LinkNode(values[i])
        current = current.next!
    }
    
    return head
}

func printList(head:LinkNode?){
    var current = head
    
    while current != nil{
        print(current?.value ?? 0)
        current = current?.next
    }
    
    print("\n")
    
}

let list = createList([1,2,3,4,5,6])
printList(head: list)
let ll = reverseLinkList(head: list)
printList(head: ll)
