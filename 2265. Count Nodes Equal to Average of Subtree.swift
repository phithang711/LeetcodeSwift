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
    var superCount = 0
    func averageOfSubtree(_ root: TreeNode?) -> Int {
        var count = 0
        dps(root, &count)

        return count
    }
    
    func dps(_ root: TreeNode?,_ finalCount: inout Int) -> (Int, Int) {
        if (root == nil) {
            return (0, 0)
        }
        
        var head = root

        var final = root!.val
        var count = 1
        
        var temp = 0
        var numCount = 0
        
        (temp, numCount) = dps(root!.left, &finalCount)
        final += temp
        count += numCount
        
        (temp, numCount) = dps(root!.right, &finalCount)
        final += temp
        count += numCount
        
        var result = Double(final) / Double(count)
        
        if Int(result) == root!.val {
            finalCount += 1
        }
        
        return (final, count)
    }
}