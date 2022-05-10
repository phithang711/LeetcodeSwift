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
    var targetSum = 0
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        var path : [[Int]] = []
        self.targetSum = targetSum
        
        dps(root, 0, [], &path)

        return path
    }
    
    func dps(_ root: TreeNode?,_ sum: Int,_ currentPath: [Int], _ path: inout [[Int]]) {
        if (root == nil) {
            return
        }
        
        var sum = sum + root!.val
        var currentPath = currentPath
        
        currentPath.append(root!.val)
        
        if sum == targetSum {
            if (root!.left == nil) && (root!.right == nil) {
                path.append(currentPath)
            }
        }
        
        dps(root!.left, sum, currentPath, &path)
        
        dps(root!.right, sum, currentPath, &path)
    }
}