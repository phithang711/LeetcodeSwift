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
class Solution {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        var leftNode : ListNode? = nil
        var rightNode : ListNode? = nil
        
        var resultLeft = leftNode
        var resultRight = rightNode
        
        var head = head
        while (head != nil) {
            var node = head
            head = head!.next
            node!.next = nil
            if (node!.val < x) {
                if (leftNode == nil) {
                    leftNode = node
                    resultLeft = leftNode
                } else {
                    leftNode!.next = node
                    leftNode = leftNode!.next
                }
            } else {
                if (rightNode == nil) {
                    rightNode = node
                    resultRight = rightNode
                } else {
                    rightNode!.next = node
                    rightNode = rightNode!.next
                }
            }
        }
        
        if leftNode != nil {
            leftNode!.next = resultRight
            return resultLeft
        } else {
            return resultRight
        }
    }
}