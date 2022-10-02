class Solution {
    func numRollsToTarget(_ n: Int, _ k: Int, _ target: Int) -> Int {
        if k * n < target { 
            return 0 
        }
        
        let modulo = 1000000007
        
        var dp = Array(repeating: Array(repeating: 0,
                                        // Max target plus one
                                        count: 1001),
                       // Max n plus one
                       count: 31)
        
        dp[0][0] = 1
        
        for i in 1...n {
            for j in 0...target {
                for v in 1...k {
                    guard j - v >= 0 else { break }
                    dp[i][j] = (dp[i][j] + dp[i-1][j-v]) % modulo
                }
            }
        }
        
        return dp[n][target]
    }
}