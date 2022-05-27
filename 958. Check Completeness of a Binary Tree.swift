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
    func isCompleteTree(_ root: TreeNode?) -> Bool {
        var check = false
        if (root == nil) {
            return false
        }
        
        var listNode : [TreeNode] = [root!]
        var temp = listNode
        
        var checkRight = true
        
        while (listNode.count != 0) {
            temp = []
            for node in listNode {
                var checkLeft = false
                if (node.left != nil) {
                    if (!checkRight) {
                        return false
                    }
                    
                    temp.append(node.left!)
                    checkLeft = true
                    checkRight = false
                } else {
                    checkLeft = false
                    checkRight = false
                }
                
                if (node.right != nil) {
                    if (!checkLeft) {
                        return false
                    }
                    
                    temp.append(node.right!)
                    checkRight = true
                } else {
                    checkRight = false
                }
            }
            
            listNode = temp
        }
        
        return true
    }
}