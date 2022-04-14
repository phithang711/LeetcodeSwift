class Solution {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        var count = 0
        var isConnected = isConnected
        
        for i in 0..<isConnected.count {
            if  isConnected[i][i] == 1 {
               count += 1
               expandToConnect(&isConnected, i)
            }
        }
        
        return count
    }
    
    func expandToConnect(_ isConnected: inout [[Int]], _ i: Int) {
        if (i < 0) || (i >= isConnected.count) {
            return
        }
        
        if (isConnected[i][i] == 0) {
            return
        }
        
        isConnected[i][i] = 0
        
        for j in 0..<isConnected[i].count {
            if isConnected[i][j] == 1 {
                isConnected[i][j] = 0
                expandToConnect(&isConnected, j)
            }
        }
    }
}