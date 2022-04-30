class Solution {
    func calcEquation(_ equations: [[String]], _ values: [Double], _ queries: [[String]]) -> [Double] {
        var dict : [String:[(String,Double)]] = [:]
        
        for i in 0..<equations.count {
            let arr = equations[i]

            if dict[arr[0]] == nil {
                dict[arr[0]] = [(arr[1], values[i])]
            } else {
                dict[arr[0]]!.append((arr[1], values[i]))
            }
            
            if dict[arr[1]] == nil {
                dict[arr[1]] = [(arr[0], 1.0/values[i])]
            } else {
                dict[arr[1]]!.append( (arr[0], 1.0/values[i]))
            }
        }
        
        var result : [Double] = []
        var visited : [String] = []
        
        for query in queries { 
            if (dict[query[0]] == nil) {
                result.append(-1.0)
                continue
            }
            
            let value = dfs(dict, query[0], query[1], 1.0, visited)
            
            result.append(value)
        }
        
        return result
    }
    
    func dfs(_ dict: [String:[(String,Double)]],_ from: String, _ to: String,_ value: Double,_  visited: [String]) -> Double {
        
        if (from == to) { 
            return value 
        }
        
        if (visited.contains(from)) { 
            return -1.0
        }
        
        var visited = visited
        
        visited.append(from)
        
        if dict[from] != nil {
            for temp in dict[from]! {
                let val = dfs(dict, temp.0, to, value * temp.1, visited)
                
                if (val > -1) {
                    return val
                }
            }
        }
        
        return -1.0
    }
}