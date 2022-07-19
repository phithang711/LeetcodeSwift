class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows < 1 {
            return []
        }
        
        var result : [[Int]] = []
        
        for i in 0..<numRows {
            var row : [Int] = [1]

            if result.count > 0 {
                for i in 0..<result[result.count - 1].count - 1 {
                    row.append(result[result.count - 1][i] + result[result.count - 1][i + 1])              
                }
                row.append(1)
            }
            
            result.append(row)
        }
        
        return result
    }
}