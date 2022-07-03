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
    func spiralMatrix(_ m: Int, _ n: Int, _ head: ListNode?) -> [[Int]] {
        var result : [[Int]] = Array(repeating: Array(repeating: -1, count: n), count: m)
        var checkArr : [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
        
        generateArr(&checkArr, 0, 0, 0, head, &result)
        return result
    }
    
    func generateArr(_ checkArr: inout [[Bool]],_ i: Int,_ j: Int,_ direction: Int,  _ head: ListNode?,_ result: inout [[Int]]) {
        if (checkArr[i][j] == true) {
            return   
        }
        
        if (head == nil) {
            return
        }
        
        checkArr[i][j] = true
        result[i][j] = head!.val
        
        // right
        if (direction == 0) {
            if (j + 1 < checkArr[i].count) && (checkArr[i][j + 1] == false) {
                generateArr(&checkArr, i, j + 1, 0, head!.next, &result)
            } else {
                // if can not go right, go down
                if (i + 1 < checkArr.count) && (checkArr[i + 1][j] == false) {
                    generateArr(&checkArr, i + 1, j, 1, head!.next, &result)
                }
            }
        }
        
        // down
        if (direction == 1) {
            if (i + 1 < checkArr.count) && (checkArr[i + 1][j] == false) {
                generateArr(&checkArr, i + 1, j, 1, head!.next, &result)
            } else {
                // if can not go down, go left
                if (j - 1 >= 0) && (checkArr[i][j - 1] == false) {
                    generateArr(&checkArr, i, j - 1, 2, head!.next, &result)
                }
            }
        }
        
        // left
        if (direction == 2) {
            if (j - 1 >= 0) && (checkArr[i][j - 1] == false) {
                generateArr(&checkArr, i, j - 1, 2, head!.next, &result)
            } else {
                // if can not go left, go up
                if (i - 1 >= 0) && (checkArr[i - 1][j] == false) {
                    generateArr(&checkArr, i - 1, j, 3, head!.next, &result)
                }
            }
        }
        
        // up
        if (direction == 3) {
            if (i - 1 >= 0) && (checkArr[i - 1][j] == false) {
                generateArr(&checkArr, i - 1, j, 3, head!.next, &result)
            } else {
                // if can not go up, go left
                if (j + 1 < checkArr[i].count) && (checkArr[i][j + 1] == false) {
                    generateArr(&checkArr, i, j + 1, 0, head!.next, &result)
                }
            }
        }
    }
}