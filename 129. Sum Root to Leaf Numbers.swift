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
    func sumNumbers(_ root: TreeNode?) -> Int {
        if (root == nil) {
            return -1
        }

        return self.toRoot(root, 0)
    }

    func toRoot(_ root: TreeNode?,_ prev: Int) -> Int {
        if (root == nil) {
            return prev
        }

        var sum = 0

        var prev = prev * 10 + root!.val

        var left = toRoot(root!.left, prev)

        if (left != prev) {
            sum += left
        }

        var right = toRoot(root!.right, prev)

        if (right != prev) {
            sum += right
        }
        
        return sum == 0 ? prev : sum
    }
}