import UIKit

class LinkNode{
    var value:Int?
    var next:LinkNode?
    
    init(_ value:Int){
        self.value = value
    }
}

func reverseList(_ head:LinkNode?)->LinkNode?{
    var prev:LinkNode?
    var current = head
    
    while current != nil{
        let nextNode = current?.next
        current?.next = prev
        prev = current
        current = nextNode
    }
    
    return prev
}

func isPalindrome(_ head:LinkNode?)->Bool{
    var slow = head
    var fast = head
    
    while fast?.next != nil && fast?.next?.next != nil{
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    var secondHalf = reverseList(slow?.next)
    var firstHalf = head
    
    var copySecondHalf = secondHalf
    
    while copySecondHalf != nil{
        if copySecondHalf?.value != firstHalf?.value{
            return false
        }
        
        copySecondHalf = copySecondHalf?.next
        firstHalf = firstHalf?.next
    }
    
    return true
}

func creatLinkList(_ values:[Int])->LinkNode?{
    guard !values.isEmpty else { return nil}
    var head = LinkNode(values[0])
    var current = head
    
    for i in 1..<values.count{
        current.next = LinkNode(values[i])
        if let next = current.next{
            current = next
        }
    }
    
    return head
}

let list = creatLinkList([1,1,2,1])

print(isPalindrome(list))
