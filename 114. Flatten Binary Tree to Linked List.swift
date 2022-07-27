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
    func flatten(_ root: TreeNode?) {
        var tail: TreeNode? // the current tail of the list
        var stack = [root]
        while let top = stack.popLast() {
            guard let node = top else { continue }
            tail?.right = node       // "visit" current node first by appending it to to the list
            stack.append(node.right) // push right first so it is processed second
            stack.append(node.left)  // push left second so it is processed first (ie, it is on top of the stack)
            tail = node              // update the tail
            node.left = nil          // clear out the left reference so the nodes are singly linked going right
        }
    }
}