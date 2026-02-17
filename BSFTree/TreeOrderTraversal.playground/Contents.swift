import UIKit

class TreeNode{
    var value:Int
    var left:TreeNode?
    var right:TreeNode?
    init(_ value:Int){
        self.value = value
    }
}

func orderTraversal(_ root:TreeNode?)->[[Int]]{
    guard let root = root else {return [[]]}
    var result = [[Int]]()
    var queue:[TreeNode] = [root]
    
    var index = 0
    
    while index < queue.count{
        let lavelCount = queue.count - index
        var lavel = [Int]()
        
        for _ in 0..<lavelCount{
            let node = queue[index]
            index += 1
            
            lavel.append(node.value)
            
            if let left = node.left{
                queue.append(left)
            }
            if let left = node.right{
                queue.append(left)
            }
        }
        
        result.append(lavel)
    }
    
    return result
}

var tree = TreeNode(1)
tree.left = TreeNode(2)
tree.right = TreeNode(3)
tree.left?.left = TreeNode(3)
tree.left?.right = TreeNode(5)
tree.right?.left = TreeNode(6)
tree.right?.right = TreeNode(7)

print(orderTraversal(tree))
