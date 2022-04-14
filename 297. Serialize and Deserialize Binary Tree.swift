/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Codec {
    func serialize(_ root: TreeNode?) -> String {
        print("root: ", dps(root))
              
        return dps(root)
    }
    
    func dps(_ root: TreeNode?) -> String {
        if (root == nil) {
            return "nil"
        }
        
        var head = root

        var final = String(root!.val)
        
        final += "," + dps(root!.left)
       
        final += "," + dps(root!.right)
        
        return final
    }
    
    func deserialize(_ data: String) -> TreeNode? {
        let final = TreeNode()
        let nodes = data.split(separator: ",").map { Int(String($0)) }
        var index = 0
        
        return buildTree(final, nodes, &index)
    }
    
    
          
    func buildTree(_ tree: TreeNode, _ nodes: [Int?], _ index: inout Int) -> TreeNode?    {
        guard let val = nodes[index] else { index += 1 ; return nil }
        var root = TreeNode(val)
        index += 1
        root.left = buildTree(tree, nodes, &index)
        root.right = buildTree(tree, nodes, &index)
        return root
    }
}


// Your Codec object will be instantiated and called as such:
// var ser = Codec()
// var deser = Codec()
// deser.deserialize(ser.serialize(root))