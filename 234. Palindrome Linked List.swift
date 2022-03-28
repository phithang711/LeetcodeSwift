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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var arr : [Int] = []
        if (head!.next == nil) {
            return true
        }
        var firstTimeGo = false;
        
        var head = head!
        while (head.next != nil) {
            let val = head.val
            arr.append(val)
            
            head = head.next!
        }
        let val = head.val
        arr.append(val)
        
        for i in stride(from: arr.count - 1, through: 0, by: -1) {
            if arr[i] != arr[arr.count - i - 1] {
                return false
            }
        }
       
        return true
    }
}