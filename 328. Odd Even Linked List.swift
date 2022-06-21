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
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        
        var count = 0
        var saveNode : ListNode? = nil
        var final = head
        var previous = head
        
        while (final!.next != nil) {
            if (count != 0) {
                previous = final
            }
            count += 1
            final = final!.next
        }
        
        count += 1
        if (count % 2 == 0) {
            saveNode = final
            final = previous
            final!.next = nil
            count = count / 2 - 1
        } else {
            count /= 2
        }
        
        var root = head
        
        while (count > 0) {
            guard let next = root!.next else {
                break
            }
            
            guard let toNext = next.next else {
                break
            }
            
            count -= 1
            root!.next = toNext
            next.next = nil
            final!.next = next
            root = root!.next
            final = final!.next
        }
        
        if (saveNode != nil) {
            final!.next = saveNode
            final = final!.next
        }
        
        return head
    }
}