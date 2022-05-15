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
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        if (root == nil) {
            return 0
        }
        
        var result = 0
        
        var listNode : [TreeNode] = [root!]
        var temp = listNode
        
        while listNode.count != 0 {
            temp = []
            result = 0
            for node in listNode {
                result += node.val
                
                if (node.left != nil) {
                    temp.append(node.left!)
                }
                
                if (node.right != nil) {
                    temp.append(node.right!)
                }
            }
            
            
            listNode = temp
            if (temp.count == nil) {
                return result
            }
        }
        
        return result
    }
}