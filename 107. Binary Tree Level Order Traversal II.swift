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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        if (root == nil) {
            return []
        }
        
        var result : [[Int]] = []
        var tempResult : [Int] = []
        
        var listNode : [TreeNode] = [root!]
        var temp = listNode
        
        while listNode.count != 0 {
            temp = []
            tempResult = []
   
            for node in listNode {
                if (node.left != nil) {
                    temp.append(node.left!)
                }
                
                if (node.right != nil) {
                    temp.append(node.right!)
                }
                
                tempResult.append(node.val)
            }
            
            listNode = temp
            
            result.append(tempResult)
        }
        
        return result.reversed()
    }
}