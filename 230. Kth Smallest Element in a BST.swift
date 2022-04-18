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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var kArray : [Int] = []
        findAll(root, &kArray, k)
        
        return kArray[kArray.count - 1]
    }
    
    func findAll(_ root: TreeNode?,_ kArray: inout [Int],_ k: Int) {
        if (root == nil) {
            return
        }
        
        if (kArray.count < k) {
            kArray.append(root!.val)
            
            if (kArray.count == k) {
                kArray.sort()
            }
        } else if (kArray.count == k) {
            if (root!.val < kArray[kArray.count - 1]) {
                kArray = kArray.dropLast()
                kArray.append(root!.val)
                kArray.sort()
            }
        }
        
        if (root!.left != nil) {
            findAll(root!.left, &kArray, k)
        }
        
        if (root!.right != nil) {
            findAll(root!.right, &kArray, k)
        }
    }
}