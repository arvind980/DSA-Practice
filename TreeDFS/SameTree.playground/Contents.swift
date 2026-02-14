import UIKit

var greeting = "Hello, playground"

class TreeNode{
    var value:Int
    var left:TreeNode?
    var right:TreeNode?
    init(_ value:Int){
        self.value = value
    }
}

func isSameTreeDFS(_ p1:TreeNode?, _ p2:TreeNode?)->Bool{
    var stack:[(TreeNode?, TreeNode?)] = [(p1,p2)]
    
    
    while !stack.isEmpty{
        let (n1,n2) = stack.removeLast()
        if n1 == nil && n2 == nil{
            continue
        }
        
        if n1 == nil || n2 == nil{
            return false
        }
        
        if n1?.value != n2?.value{
            return false
        }
        
        stack.append((n1?.left, n2?.left))
        stack.append((n1?.right, n2?.right))
    }
    
    return true
}

let tree1 = TreeNode(1)
tree1.left = TreeNode(2)
tree1.right = TreeNode(3)

let tree2 = TreeNode(1)
tree2.left = TreeNode(2)
tree2.right = TreeNode(3)

print(isSameTreeDFS(tree1, tree2))
