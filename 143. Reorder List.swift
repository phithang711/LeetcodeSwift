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
    func reorderList(_ head: ListNode?) {
        if (head == nil) {
            return
        }
        
        if (head!.next == nil) {
            return
        }
        
        var finalArr : [Int] = [] 
        var resultArr: [Int] = []
        var listHead = head
        
        while (listHead != nil) {
            finalArr.append(listHead!.val)
            listHead = listHead!.next
        }
        
        var i = finalArr.count - 1
        
        resultArr.append(finalArr[0])
        while (i >= finalArr.count / 2) {
            if (i != finalArr.count - i) {
                resultArr.append(finalArr[i])
                resultArr.append(finalArr[finalArr.count - i])  
            } else {
                resultArr.append(finalArr[i])
            }
            
            i -= 1
        }
        
        listHead = head
        
        i = 0
        while (listHead != nil) {
            listHead!.val = resultArr[i]
            listHead = listHead!.next
            
            i += 1
        }
    }
}