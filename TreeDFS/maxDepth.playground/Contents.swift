import UIKit

class TreeNode{
    var value:Int
    var left:TreeNode?
    var right:TreeNode?
    init(_ value:Int){
        self.value = value
    }
}

//DFS
//
//func maxDepth(_ root:TreeNode?)->Int{
//    guard let root = root else {return 0}
//    let leftDepth = maxDepth(root.left)
//    let rightDepth = maxDepth(root.right)
//    return 1 + max(leftDepth, rightDepth)
//}

// BFS

func maxDepth(_ root:TreeNode?)->Int{
    guard let root = root else {return 0}
    var queue = [root]
    var maxDepth = 0
    
    while !queue.isEmpty{
        let levelCount = queue.count
        maxDepth += 1
        
        for _ in 0..<levelCount{
            let node = queue.removeFirst()
            if let left = node.left{
                queue.append(left)
            }
            if let right = node.right{
                queue.append(right)
            }
        }
    }
    
    return maxDepth
}


let tree = TreeNode(1)
tree.left = TreeNode(2)
tree.right = TreeNode(3)

tree.left?.left = TreeNode(4)
tree.right?.right = TreeNode(5)

print(maxDepth(tree))
