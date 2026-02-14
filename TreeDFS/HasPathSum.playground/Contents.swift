import UIKit

class TreeNode{
    var value:Int
    var left : TreeNode?
    var right: TreeNode?
    
    init(_ value:Int){
        self.value = value
    }
}

func hasPathSum(_ root:TreeNode?,target:Int)->Bool{
    guard let root = root else {return false}
    
    if root.left == nil && root.right == nil{
        return target == root.value
    }
    
    let remaining = target - root.value
    
    return hasPathSum(root.left,target: remaining) || hasPathSum(root.right, target: remaining)
}

func hasPathSumBFS(_ root:TreeNode?,target:Int)->Bool{
    guard let root = root else {
        return false
    }
    
    var queue:[(TreeNode, Int)] = [(root, target)]

    while !queue.isEmpty{
        var (node, remaining) = queue.removeFirst()
        
        if node.left == nil && node.right == nil{
            if node.value == remaining{
                return true
            }
        }
        
        let newRemaining = remaining - node.value
        
        if let left = node.left{
            queue.append((left, newRemaining))
        }
        
        if let right = node.right{
            queue.append((right, newRemaining))
        }
    }
    
    return false
}

func printTree(_ root:TreeNode?){
    guard let root = root else {return}
    var queue = [root]
    
    while !queue.isEmpty{
        var treeLevel = queue.count
        var level:[Int] = []
        
        for _ in 0..<treeLevel{
            let node = queue.removeFirst()
            level.append(node.value)
            
            if let left = node.left{
                queue.append(left)
            }
            if let right = node.right{
                queue.append(right)
            }
           
        }
        
        print(level)
    }
}

let tree  = TreeNode(5)
tree.left = TreeNode(4)
tree.right = TreeNode(8)

tree.left?.left = TreeNode(11)
tree.left?.left?.left = TreeNode(7)
tree.left?.left?.right = TreeNode(2)

tree.right?.left = TreeNode(13)
tree.right?.right = TreeNode(4)
print(printTree(tree))

print(hasPathSumBFS(tree,target: 27))
