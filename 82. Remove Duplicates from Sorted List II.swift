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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if (head == nil) {
            return nil
        }
        
        var head = head
        
        var distinceArr : [Int] = []
        var duplicateArr : [Int] = []
        
        var val = 0
        while (head != nil) {
            val = head!.val
            head = head!.next
            
            if (distinceArr.count == 0) && (duplicateArr.count == 0) {
                distinceArr.append(val)
                continue
            } else {
                if (distinceArr.count != 0) && (distinceArr[distinceArr.count - 1] == val) {
                    distinceArr = distinceArr.dropLast() 
                    duplicateArr.append(val)
                } else {
                    if (duplicateArr.count == 0) || (duplicateArr[duplicateArr.count - 1] != val) {
                        distinceArr.append(val)
                    }
                }
            }
        }
        
        if (distinceArr.count == 0) {
            return nil
        }
        
        var resultNode = ListNode()
        var nextNode = resultNode
        
        for value in distinceArr {
            nextNode.next = ListNode()
            nextNode = nextNode.next!
            nextNode.val = value
        }
        
        return resultNode.next
    }
}