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
    func dfs(_ root: TreeNode?, _ count: inout Int) -> Int {
        if (root == nil) {
            return 1
        }
        
        let leftVal = dfs(root!.left, &count)
        let rightVal = dfs(root!.right, &count)
        
        if (leftVal == 0) || (rightVal == 0) {
            count += 1
            return 2
        }
        
        if (leftVal == 1) && (rightVal == 1) {
            return 0
        }
        
        return 1
    }
    
    func minCameraCover(_ root: TreeNode?) -> Int {
        var count = 0
        let check = dfs(root, &count)
        return check == 0 ? count + 1 : count
    }
}