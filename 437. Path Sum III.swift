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
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil { 
            return 0 
        }
        
        var totalPaths = 0
        var sumFrequency : [Int:Int] = [:]
        sumFrequency[0] = 1
        
        self.calculatePathsDFS(root, sum, 0, &sumFrequency, &totalPaths)
        return totalPaths
    }

    func calculatePathsDFS(_ root: TreeNode?, _ target: Int, _ prevSum: Int, _ sumFrequency: inout [Int: Int], _ totalPaths: inout Int) {
        if root == nil {
            return
        }
        
        let sum = prevSum + root!.val
        totalPaths += sumFrequency[sum - target, default: 0]

        sumFrequency[sum] = sumFrequency[sum, default: 0] + 1

        calculatePathsDFS(root!.left, target, sum, &sumFrequency, &totalPaths)
        calculatePathsDFS(root!.right, target, sum, &sumFrequency, &totalPaths)
        sumFrequency[sum] = sumFrequency[sum, default: 0] - 1
    }
}