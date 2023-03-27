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
    var listVal : [Int] = []
    init(_ head: ListNode?) {
        var node = head
        while (node != nil) {
            listVal.append(node!.val)
            node = node!.next
        }
    }
    
    func getRandom() -> Int {
        var random = Int.random(in: 0 ..< listVal.count)
        return listVal[random]
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(head)
 * let ret_1: Int = obj.getRandom()
 */