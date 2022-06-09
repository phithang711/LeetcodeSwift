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
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        var listNode : [TreeNode] = [root!]
        var temp = listNode
        var result : [Int] = []
        
        while listNode.count != 0 {
            temp = []
            for node in listNode {
                result.append(node.val)
                if node.left != nil {
                    temp.append(node.left!)
                }
                
                if node.right != nil {
                    temp.append(node.right!)
                }
            }
            
            listNode = temp
        }
        
        result.sort {$0<$1}
        
        var min = Int.max 
        for i in 1..<result.count {
            if result[i] - result[i-1] < min {
                min = result[i] - result[i-1]
            }
        }
        
        return min
    }
}