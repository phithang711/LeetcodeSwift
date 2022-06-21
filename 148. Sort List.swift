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
    func sortList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        
        var result : [Int] = []
        var root = head 
        
        while root != nil {
            result.append(root!.val)
            root = root!.next
        }
        
        result.sort {$0 < $1}
        
        var resultNode : ListNode? = nil
        var final : ListNode? = nil
        for val in result {
            let node = ListNode()
            node.val = val
            if (resultNode == nil) {
                resultNode = node
                final = resultNode
            } else {
                resultNode!.next = node
                resultNode = resultNode!.next
            }
        }
        
        return final
    }
}