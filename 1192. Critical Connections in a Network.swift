class Solution {
    func criticalConnections(_ n: Int, _ connections: [[Int]]) -> [[Int]] {
        var listConnection: [[Int]] = Array(repeating: [], count: n)
        
        var trackingNode = Array(repeating: -1, count: n)
        var result : [[Int]] = []
        
        for connection in connections {
            listConnection[connection[0]].append(connection[1])
            listConnection[connection[1]].append(connection[0])
        }
        
        let _ = dfs(0, -1, 0, &trackingNode, listConnection, &result)
        
        return result
    }
    
    func dfs(_ currentNode: Int,_ parrentNode:  Int,_ step: Int, _ trackingNode: inout [Int], _ listConnection: [[Int]], _ result: inout [[Int]]) -> Int {
        trackingNode[currentNode] = step + 1
        
        for node in listConnection[currentNode] {
            if (node == parrentNode) {
                continue
            }
        
            if trackingNode[node] == -1 {
                trackingNode[currentNode] = min(trackingNode[currentNode], dfs(node, currentNode, step + 1, &trackingNode, listConnection, &result))
            } else {
                trackingNode[currentNode] = min(trackingNode[currentNode], trackingNode[node])
            }
        }
        
        if trackingNode[currentNode] == step + 1 && currentNode != 0 {
            result.append([parrentNode, currentNode])
        }
        
        return trackingNode[currentNode]
    }
}