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
    func isSym(_ leftNode:TreeNode?, _ rightNode:TreeNode?) -> Bool {
        if leftNode == nil && rightNode == nil { 
            return true 
        }
            
        if leftNode == nil || rightNode == nil || leftNode!.val != rightNode!.val {
            return false
        }

        return isSym(leftNode!.left, rightNode!.right) && isSym(leftNode!.right, rightNode!.left)
    }

    func isSymmetric(_ root: TreeNode?) -> Bool {
        if (root == nil) {
            return true
        }
        
        return isSym(root!.left, root!.right)
    }
}