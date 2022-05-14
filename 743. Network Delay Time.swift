class Solution {
    func networkDelayTime(_ times: [[Int]], _ n: Int, _ k: Int) -> Int {
        var array = Array(repeating: Array(repeating: 10000, count: n), count: n)
        
        var distance = Array(repeating: 10000, count: n)
        var visited = Array(repeating: false, count: n)
        
        for time in times {
            array[time[0] - 1][time[1] - 1] = time[2]
        }
        
        distance[k - 1] = 0;
        var v = -1
        var min = 10000
        
        // dijsktra
        for i in 0..<n {
            // find min index
            v = -1
            min = 10000
            for i in 0..<n {
                if (visited[i] == false) && (distance[i] < min) {
                    min = distance[i]
                    v = i
                }
            }
            
            if (v == -1) {
                continue
            }
            
            visited[v] = true
            
            for j in 0..<n {
                if (array[v][j] != 10000) {
                    distance[j] = distance[j] < array[v][j] + distance[v] ? distance[j] : array[v][j] + distance[v]
                }
            }
        }
        
        var result = 0
        for dis in distance {
            if (dis == 10000) {
                return -1
            }
            
            result = max(result, dis)
        }
        
        return result
    }
}