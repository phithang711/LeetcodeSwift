/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if (root == nil) || (subRoot == nil) {
            return false
        }
    
        var root = root
        var compareRoot : [TreeNode] = []
        
        
        var listNode : [TreeNode] = []
        listNode.append(root!)
        
        var temp = listNode
        
        while (listNode.count != 0) {
            temp = []
            for node in listNode {
                if node.val == subRoot!.val {
                    compareRoot.append(node)
                }
                
                if (node.left != nil) {
                    temp.append(node.left!)
                }
                
                if (node.right != nil) {
                    temp.append(node.right!)
                }
            }
            
            listNode = temp
        }
        
        
        if compareRoot.count == 0 {
            return false
        }
        
        for node in compareRoot {
            if compareNode(node, subRoot!) == true {
                return true
            }
        }
        
        return false     
    }
    
    func compareNode(_ nodeToCompare: TreeNode, _ nodeDest: TreeNode) -> Bool {
        var listNode : [TreeNode] = []
        var listNodeToCompare : [TreeNode] = []
        
        listNode.append(nodeDest)
        listNodeToCompare.append(nodeToCompare)
        
        var temp = listNode
        var compare = listNodeToCompare
        
        while (listNode.count != 0) {
            temp = []
            compare = []
            
            for i in 0..<listNode.count {
                if listNode[i].val != listNodeToCompare[i].val {
                    return false
                }
                
                if (listNode[i].left != nil) {
                    if (listNodeToCompare[i].left == nil) {
                        return false
                    }
                    
                    temp.append(listNode[i].left!)
                    compare.append(listNodeToCompare[i].left!)
                } else {
                    if (listNodeToCompare[i].left != nil) {
                        return false
                    }
                }
                
                if (listNode[i].right != nil) {
                    if (listNodeToCompare[i].right == nil) {
                        return false
                    }
                    
                    temp.append(listNode[i].right!)
                    compare.append(listNodeToCompare[i].right!)
                } else {
                    if (listNodeToCompare[i].right != nil) {
                        return false
                    }
                }
            }
            
            listNode = temp
            listNodeToCompare = compare
        }
        
        if (listNodeToCompare.count != 0) {
            return false
        } else {
            return true
        }
    }
}