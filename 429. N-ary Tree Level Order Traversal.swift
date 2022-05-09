/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    func levelOrder(_ root: Node?) -> [[Int]] {
        if (root == nil) {
            return []
        }
        
        var result : [[Int]] = []
        var tempResult : [Int] = []
        
        var listNode : [Node] = [root!]
        var temp = listNode
        
        while listNode.count != 0 {
            temp = []
            tempResult = []
   
            for node in listNode {
                if node.children.count > 0 {
                    for child in node.children {
                        temp.append(child)
                    }
                }
                
                tempResult.append(node.val)
            }
            
            listNode = temp
            
            result.append(tempResult)
        }
        
        return result
    }
}