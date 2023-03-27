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
    func kthLargestLevelSum(_ root: TreeNode?, _ k: Int) -> Int {
        var sumArr : [Int] = []
        
        if root == nil {
            return -1
        }
        
        var nodeList : [TreeNode?] = [root]
        var tempList : [TreeNode?] = []
        var sum = 0
        
        while nodeList.count > 0 {
            sum = 0
            tempList = []
            for node in nodeList {
                sum += node!.val
                if (node!.left != nil) {
                    tempList.append(node!.left)
                }
                
                if (node!.right != nil) {
                    tempList.append(node!.right)
                }
            }
            
            nodeList = tempList
            sumArr.append(sum)
        }
        
        if (k > sumArr.count) {
            return -1
        }
        
        sumArr.sort {$0 > $1}
        
        return sumArr[k - 1]
    }
}