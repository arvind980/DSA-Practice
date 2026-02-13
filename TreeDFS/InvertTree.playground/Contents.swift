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

//func invertTree(_ root:TreeNode?)->TreeNode?{
//    guard let root = root else {return nil}
//    var temp = root.left
//    root.left = root.right
//    root.right = temp
//    
//    invertTree(root.left)
//    invertTree(root.right)
//    
//    return root
//}

func invertTree(_ root:TreeNode?)->TreeNode?{
    guard let root = root else { return nil}
    var queue = [root]
    
    while !queue.isEmpty{
        let node = queue.removeFirst()
        var temp = node.left
        node.left = node.right
        node.right = temp
        
        if let left = node.left{
            queue.append(left)
        }
        if let right = node.right{
            queue.append(right)
        }
    }
    
    return root
}

func printTreeBFS(_ root: TreeNode?) {
    guard let root = root else {
        print("Empty tree")
        return
    }

    var queue: [TreeNode] = [root]

    while !queue.isEmpty {
        let levelSize = queue.count
        var level: [Int] = []

        for _ in 0..<levelSize {
            let node = queue.removeFirst()
            level.append(node.value)

            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }

        print(level)
    }
}



let tree = TreeNode(1)
tree.left = TreeNode(2)
tree.right = TreeNode(3)

tree.left?.left = TreeNode(4)
tree.right?.right = TreeNode(5)

printTreeBFS(tree)
let inv = invertTree(tree)
printTreeBFS(inv)

