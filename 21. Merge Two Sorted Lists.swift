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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var listFinal = ListNode()
        var list1 = list1
        var list2 = list2
        let listStart = listFinal
        
        if (list1 == nil && list2 == nil) {
            return nil
        } 
        
        if (list1 == nil && list2 != nil) {
            return list2
        }
        
        if (list1 != nil && list2 == nil) {
            return list1
        }
        
        var val1 = 0
        var val2 = 0
        
        while (list1!.next != nil) || (list2!.next != nil) {
            listFinal.next = ListNode()
            listFinal = listFinal.next!
            val1 = list1 != nil ? list1!.val : -101
            val2 = list2 != nil ? list2!.val : -101
       
            if ((val2 < val1) && (val2 != -101)) {
                listFinal.val = val2
                list2 = list2!.next
                
                if (list2 == nil) {
                    break
                }
                continue
            }
            
            if ((val1 <= val2) && (val1 != -101)) {
                listFinal.val = val1
                list1 = list1!.next
                
                if (list1 == nil) {
                    break
                }
                
                continue
            }
        }
        
        // check if one of them nil first
        if (list1 == nil && list2 != nil) {
            listFinal.next = list2!
            return listStart.next
        }
        
        if (list1 != nil && list2 == nil) {
            listFinal.next = list1!
            return listStart.next
        }
        
        // if both not nil
        listFinal.next = ListNode()
        listFinal = listFinal.next!
   
        val1 = list1!.val
        val2 = list2!.val
            
        if (val2 < val1) {
            listFinal.val = val2
            list2 = list2!.next
            
            if (val1 != -101) {
                listFinal.next = ListNode()
                listFinal = listFinal.next!
                listFinal.val = val1
            }
        } else {
            listFinal.val = val1
            list1 = list1!.next
            
            if (val2 != -101) {
                listFinal.next = ListNode()
                listFinal = listFinal.next!
                listFinal.val = val2
            }
        }    
        
        return listStart.next
    }
}