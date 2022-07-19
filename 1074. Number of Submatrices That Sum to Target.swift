class Solution {
    func numSubmatrixSumTarget(_ matrix: [[Int]], _ target: Int) -> Int {
        if matrix.count < 1 {
            return 0
        }
        
        var prefix = matrix
        var result = 0
        
        for i in 0..<matrix.count {
            for j in 1..<matrix[0].count {
                prefix[i][j] += prefix[i][j - 1]
            }
        }
        
        
        for j in 0..<matrix[0].count {
            for z in j..<matrix[0].count {
                var dp: [Int : Int] = [0 : 1]
                var sum = 0
                for i in 0..<matrix.count {
                    sum += prefix[i][z] - (j > 0 ? prefix[i][j - 1] : 0)
                    result += dp[sum - target, default: 0]
                    dp[sum, default: 0] += 1
                }
            }
        }
        return result
    }
}