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
    func middleNode(_ head: ListNode?) -> ListNode? {
        var count = 0
        if (head!.next == nil)
        {
            return head
        }
        
        var headTemp = head!
        while (headTemp.next != nil) {
            count += 1
            headTemp = headTemp.next!
        }
        
        if (count % 2 == 0) {
            count /= 2
        } else {
            count = count / 2 + 1
        }
        
        headTemp = head!
        for i in 0..<count {
            headTemp = headTemp.next!
        }
        
        return headTemp
        
    }
}