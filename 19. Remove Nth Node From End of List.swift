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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var finalHead = ListNode()
        var nextFinal = finalHead
       if (head == nil) {
           return nil
       } 
        
        if (head!.next == nil) {
            return nil
        }
        
        var count = 1
        var final = head!
        
        while (final.next != nil) {
            final = final.next!
            count += 1
        }
          
        final = head!
        
        if (n == count) {
            return final.next!
        }
      
        for i in 0..<count - n - 1 {       
            nextFinal.val = final.val
            nextFinal.next = ListNode()
            nextFinal = nextFinal.next!
            final = final.next!
        }
        nextFinal.val = final.val
        
        var nextVal = final.next!.next
        if (nextVal != nil) {
            nextFinal.next = nextVal
        }
        
        return finalHead
    }
}