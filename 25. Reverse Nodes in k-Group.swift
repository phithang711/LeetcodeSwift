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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        if (head == nil) {
            return nil
        }

        var head = head
        var resultNode = ListNode()
        var nextNode = resultNode

        var kReserverd = k
        var k = k
        var kArr : [Int] = []

        var val = 0
        while (head != nil) {
            val = head!.val
            head = head!.next
            k -= 1
            kArr.append(val)
            
            if (k == 0) {
                k = kReserverd
                
                for i in stride(from: kArr.count - 1, to: -1, by: -1) {
                    nextNode.next = ListNode()
                    nextNode = nextNode.next!
                    nextNode.val = kArr[i]
                }
                
                kArr = []
            }
        }
        
        if (kArr.count != 0) {
            for value in kArr {
                nextNode.next = ListNode()
                nextNode = nextNode.next!
                nextNode.val = value
            }
        }

        return resultNode.next
    }
}