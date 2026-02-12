import UIKit

class TreeNode{
    var value:Int
    var left:TreeNode?
    var right:TreeNode?
    init(_ value:Int){
        self.value = value
    }
}

func maxDepth(_ root:TreeNode?)->Int{
    guard let root = root else {return 0}
    let leftDepth = maxDepth(root.left)
    let rightDepth = maxDepth(root.right)
    return 1 + max(leftDepth, rightDepth)
}

let tree = TreeNode(1)
tree.left = TreeNode(2)
tree.right = TreeNode(3)

tree.left?.left = TreeNode(4)
tree.right?.right = TreeNode(5)

print(maxDepth(tree))
