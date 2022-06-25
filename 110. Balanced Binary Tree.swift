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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        
        let (_, check) = self.findDeep(root, 0)
        
        return check
    }
    
    func findDeep(_ root: TreeNode?,_ current: Int) -> (Int, Bool) {
        if (root == nil) {
            return (current, true)
        }
        
        let (left, checkLeft) = self.findDeep(root!.left, current + 1)
        let (right, checkRight) = self.findDeep(root!.right, current + 1)
        
        if (checkLeft == false) || (checkRight == false) {
            return (max(left, right), false)
        }
        
        return (max(left, right), abs(left - right) <= 1 ? true : false)
    }
}