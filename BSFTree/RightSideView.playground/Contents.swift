import UIKit

class TreeNode{
    var value:Int
    var left:TreeNode?
    var right:TreeNode?
    
    init(_ value:Int){
        self.value = value
    }
}

func rightSideViewBFS(_ root:TreeNode?)->[Int]{
    guard let root = root else { return []}
    var result:[Int] = []
    var queue = [root]
    var index = 0
    
    while index < queue.count{
        let levelCount = queue.count - index
        var lastValue:Int = 0
        
        for _ in 0..<levelCount{
            let node = queue[index]
            index += 1
            lastValue = node.value
            
            if let left = node.left{
                queue.append(left)
            }
            if let right = node.right{
                queue.append(right)
            }
        }
        
        result.append(lastValue)
    }
    
    return result
}

// for left side view if we check i == 0 and append value in array
//if i == 0 {
//  result.append(node.value)
//}

func rightSideViewDFS(_ root:TreeNode?)->[Int]{
    guard let root = root else { return []}
    
    var result:[Int] = []
    var stack:[(TreeNode, Int)] = [(root, 0)]
    
    while !stack.isEmpty{
        let (node, depth) = stack.removeLast()
        
        if depth == result.count{
            result.append(node.value)
        }
        
        if let left = node.left{
            stack.append((left, depth + 1))
        }
        if let left = node.right{
            stack.append((left, depth + 1))
        }
    }
    
    return result
}

// for left side view

//if let left = node.right{
//    stack.append((left, depth + 1))
//}
//if let left = node.left{
//    stack.append((left, depth + 1))
//}



var tree = TreeNode(1)
tree.left = TreeNode(2)

tree.right = TreeNode(3)
tree.right?.left = TreeNode(4)
tree.right?.right = TreeNode(5)
tree.right?.right?.right = TreeNode(6)

print(rightSideViewDFS(tree))



/*

 ⏱ Complexity

Time: O(n)

Space: O(n) worst case

 
 */
 

