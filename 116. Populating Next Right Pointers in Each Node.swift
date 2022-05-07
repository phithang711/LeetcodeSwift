/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *	   public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func connect(_ root: Node?) -> Node? {
        if root == nil {
            return root
        }
        
        var root = root!
        
        var listNode : [Node] = []
        
        listNode.append(root)
        
        while listNode.count > 0 {
            var temp : [Node] = []
            var prev : Node?
            
            for i in 0..<listNode.count {
                if listNode[i].left != nil {
                    temp.append(listNode[i].left!)
                }
                
                if listNode[i].right != nil {
                    temp.append(listNode[i].right!)
                }
                
                if (prev != nil) {
                    prev!.next = listNode[i]
                }
                
                prev = listNode[i]
            }
            
            listNode = temp
        }
        
        return root   
    }
}