/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
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
    func isSubPath(_ head: ListNode?, _ root: TreeNode?) -> Bool {
        var listHead: [Int] = []
        
        var head = head!
        while (head.next != nil) {
            listHead.append(head.val)
            head = head.next!
        }
        
        listHead.append(head.val)
     
        return getVal(compareResult: listHead, result: [], root: root)
    }
    
    func getVal(compareResult: [Int], result: [Int], root: TreeNode?) -> Bool {
        if (root == nil) {
            if (result.count < compareResult.count) {
                return false
            }
            
            if (result.count == compareResult.count) {
                return result == compareResult ? true : false
            }
            
            return result.contains(compareResult)
        }
        
        var arr = result
        arr.append(root!.val)
        
        let left = getVal(compareResult: compareResult, result: arr, root: root!.left)
        if (left == true) {
            return true
        }
        
        let right = getVal(compareResult: compareResult, result: arr, root: root!.right)
        if (right == true) {
            return true
        }
        
        return false
        
    }
}

extension Array where Element: Equatable {
    func contains(_ subarray: [Element]) -> Bool {
        guard subarray.count <= count else { return false }
    
        for idx in 0 ... count - subarray.count {
            let start = index(startIndex, offsetBy: idx)
            let end = index(start, offsetBy: subarray.count)
            if Array(self[start ..< end]) == subarray { return true }
        }        
        return false
    }
}