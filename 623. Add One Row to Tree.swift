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
    func addOneRow(_ root: TreeNode?, _ val: Int, _ depth: Int) -> TreeNode? {
        if depth == 1 {
            return TreeNode(val, root, nil)
        }

        if root == nil {
            return nil
        }

        var listNode = [root]
        var temp = listNode

        var tempDepth = 1

        while listNode != nil {
            temp = []

            tempDepth += 1

            if tempDepth > depth {
                return root
            }

            for node in listNode {
                if (node!.left != nil) {
                        temp.append(node!.left)
                    }

                    if (node!.right != nil) {
                        temp.append(node!.right)
                    }

                if (tempDepth == depth) {
                    var tempNode = TreeNode(val, node!.left, nil)
                    node!.left = tempNode

                    tempNode = TreeNode(val, nil, node!.right)
                    node!.right = tempNode
                }
            }
            
            listNode = temp
        }

        return root
    }
}