import UIKit

class TreeNode{
    var value:Int
    var left:TreeNode?
    var right:TreeNode?
    
    init(_ value:Int){
        self.value = value
    }
}

func minDepth(_ root: TreeNode?)->Int{
    guard let root = root else { return 0 }
    
    if root.left == nil{
        return 1 + minDepth(root.right)
    }
    if root.right == nil{
        return 1 + minDepth(root.left)
    }
    
    return 1 + min(minDepth(root.left), minDepth(root.right))
}

func minDepthBFS(_ root:TreeNode?)->Int{
    guard let root = root else {return 0}
    
    var queue:[(Int,TreeNode)] = [(1, root)]
    var index = 0
    
    while index < queue.count{
        let (depth, node) = queue[index]
        index += 1
        
        if node.left == nil &&  node.right == nil{
            return depth
        }
        
        if let left = node.left{
            queue.append((depth + 1, left))
        }
        
        if let right = node.right{
            queue.append((depth + 1, root))
        }
    }
    
    return 0
    
}

var tree = TreeNode(1)
tree.left = TreeNode(2)
tree.right = TreeNode(3)
tree.right?.right = TreeNode(4)


print(minDepthBFS(tree))
