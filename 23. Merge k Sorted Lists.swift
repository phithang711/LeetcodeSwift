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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var resultNode = ListNode()
        var nextNode = resultNode

        var finalArr : [Int] = []

        var val = 0
        for list in lists {
            var head = list
            if (head == nil) {
                continue
            }
            
            while (head != nil) {
                val = head!.val
                head = head!.next
                finalArr.append(val)
            }
        }
        
        finalArr.sort()
        
        for value in finalArr {
            nextNode.next = ListNode()
            nextNode = nextNode.next!
            nextNode.val = value
        }

        
        return resultNode.next
    }
}