class Solution {
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        var result: [[Int]] = []
        var check: [Bool] = Array(repeating: false, count: graph.count)
        findAll(graph, 0, check, [], &result)
 
        return result
    }
    
    func findAll(_ graph: [[Int]],_ index: Int,_ check: [Bool], _ path: [Int], _ result: inout [[Int]]) {
        var check = check
        var path = path
        
        if (check[index] == true) {
            return
        }
        
        check[index] = true
        path.append(index)
        
        if (index == graph.count - 1) {
            result.append(path)
            return
        }
        
        if (graph[index] == []) {
            return
        }
        
        if (graph[index].count == 0) {
            return
        }
        
        for i in 0..<graph[index].count {
            if check[graph[index][i]] == false {
                findAll(graph, graph[index][i], check, path, &result)
            }
        }
    }
}