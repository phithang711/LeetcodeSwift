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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count <= 0 || inorder.count <= 0 {
            return nil
        }
        
        let total = preorder.count
        
        let root = TreeNode(preorder[0])
        var rootIndex = -1
        
        for (index, value) in inorder.enumerated() {
            if value == root.val {
                rootIndex = index
                break
            } 
        }
        
        let leftCount = rootIndex
        let rightCount = total - leftCount - 1
        
        root.left = buildTree(Array(preorder[1..<1 + leftCount]), Array(inorder[0..<leftCount + 1]))
        root.right = buildTree(Array(preorder[1 + leftCount..<total]), Array(inorder[1 + leftCount..<total]))
        return root
    }
}