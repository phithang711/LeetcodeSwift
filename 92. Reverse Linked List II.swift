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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        if left > right {
            return nil
        }
        
        if left == right {
            return head
        }
        
        var result : [Int] = []
        
        var head = head
        while (head != nil) {
            result.append(head!.val)
            head = head!.next
        }
        
        head = nil
        var resultHead = head
        for i in 0..<result.count {
            var check = i + 1
            var node : ListNode? = nil
            if (check >= left) && (check <= right) {
                node = ListNode(result[right - (check - left) - 1])
            } else {
                node = ListNode(result[i])
            }
            
            if (head == nil) {
                head = node
                resultHead = head
            } else {
                head!.next = node
                head = head!.next
            }
        }
        
        return resultHead
    }
}