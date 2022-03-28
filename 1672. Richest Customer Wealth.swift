class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var max = -1
        for row in accounts {
            var wealth = 0
            for j in row {
                wealth += j
            }
            
            if max < wealth {
                max = wealth
            }
        }
        
        return max
    }
}