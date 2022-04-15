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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        var temp = 0
        
        var finalList = ListNode()
        var next = finalList
        
        while (l1 != nil) || (l2 != nil) {
            let val1 = l1 != nil ? l1!.val : 0
            let val2 = l2 != nil ? l2!.val : 0
            
            if (l1 != nil) {
                l1 = l1!.next
            }
            
            if (l2 != nil) {
                l2 = l2!.next
            }
            
            var sum = val1 + val2 + temp
            temp = 0
            
            if (sum > 9) {
                temp = 1
                sum %= 10
            }
            
            next.next = ListNode()
            next = next.next!
            next.val = sum
        }
        
        if (temp != 0) {
            next.next = ListNode()
            next = next.next!
            next.val = temp
        }
        
        return finalList.next
    }
}