/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var answer: TreeNode?

        func hasTarget(node: TreeNode?) -> Bool {
            guard let node = node else { return false }

            let leftAnswer = hasTarget(node: node.left) ? 1 : 0
            let rightAnswer = hasTarget(node: node.right) ? 1 : 0
            let midAnswer = (node === p || node === q) ? 1 : 0

            if (leftAnswer + rightAnswer + midAnswer) >= 2 {
                answer = node
            }

            return (leftAnswer + rightAnswer + midAnswer) > 0
        }

        _ = hasTarget(node: root)
        return answer
    }
}