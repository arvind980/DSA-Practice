import UIKit

class TreeNode{
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ value:Int){
        self.value = value
    }
}

func diameterOfBinaryTree(_ root:TreeNode?)->Int{
   
    var diameter = 0
    
    func height(_ root:TreeNode?)->Int{
        guard let root = root else {return 0}
        let leftHeight = height(root.left)
        let rightHeight = height(root.right)
        
        diameter = max(diameter, leftHeight + rightHeight)
        
        return 1 + max(leftHeight, rightHeight)
    }
    
    height(root)
    return diameter
}

let tree = TreeNode(1)
tree.left = TreeNode(2)
tree.right = TreeNode(3)
tree.left?.left = TreeNode(4)
tree.right?.right = TreeNode(5)
print(diameterOfBinaryTree(tree))
