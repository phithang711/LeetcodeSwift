class Solution {
    func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
        
        var listCheckIndex = Array(repeating: false, count: n)
        var listFromIndex = Array(repeating: false, count: n)
        var listStart : [Int] = []
        
        for path in edges {
            listFromIndex[path[0]] = true
            listCheckIndex[path[1]] = true
        }
        
        for i in 0..<listCheckIndex.count {
            if (!listFromIndex[i] && !listCheckIndex[i]) || (listFromIndex[i] && !listCheckIndex[i]) {
                listStart.append(i)
            }
        }
        
        return listStart
    }
}