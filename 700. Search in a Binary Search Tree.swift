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
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if (root == nil) {
            return nil
        }
        
        if (root!.val == val) {
            return root
        }
        
        let left = searchBST(root!.left, val)
        let right = searchBST(root!.right, val)
        
        if (left != nil) {
            return left
        }
        
        if (right != nil) {
            return right
        }
        
        return nil    
    }
}