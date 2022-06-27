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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var maxDepth = 0
        self.dfs(root, &maxDepth)
        
        return maxDepth
    }
    
    func dfs(_ root: TreeNode?, _ maxDepth: inout Int) -> Int {
        if (root == nil) {
            return 0
        }
        
        let left = dfs(root!.left, &maxDepth)
        let right = dfs(root!.right, &maxDepth)
        
        maxDepth = max(maxDepth, left + right)
        return (1 + max(left, right))
    }
}