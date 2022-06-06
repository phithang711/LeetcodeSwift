/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if (headA == nil) {
            return nil
        }
        
        if (headB == nil) {
            return nil
        }
        
        var p1 = headA
        var p2 = headB
        
        while p1 !== p2 {
            if p1 == nil {
                p1 = headB
            } else {
                p1 = p1!.next
            }
            
            if p2 == nil {
                p2 = headA
            } else {
                p2 = p2!.next
            }
        }
        
        return p1
    }
}