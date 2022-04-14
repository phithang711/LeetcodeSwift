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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var head = head
        
        if (head == nil) || (head!.next == nil) {
            return head
        }

        var parentHead = head
        var headNext = parentHead!.next
        var toNext = head
        
        var returnHead = headNext
        var previous : ListNode = ListNode()
        previous.val = -1
        
        while (headNext!.next != nil) {
            if (previous.val != -1) {
                previous.next = headNext
            }
            
            previous = parentHead!
            
            toNext = headNext!.next
            headNext!.next = parentHead
            parentHead!.next = toNext
            parentHead = toNext
            
            if (toNext!.next == nil) {
                return returnHead
            } else {
                headNext = toNext!.next
            }
        }
        
        if (previous.val != -1) {
            previous.next = headNext
        }
            
        parentHead!.next = nil
        headNext!.next = parentHead
        
        return returnHead
    }
}