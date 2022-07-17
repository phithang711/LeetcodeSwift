class Solution {
    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        let mod = 1000000007
        var dp = Array(repeating: Array(repeating: 0, count: k+1), count: n+1)
        
        for i in 1...n {
            for j in 0...k {
                if j == 0 {
                    dp[i][j] = 1
                } else {
                    var res = dp[i][j]
                    for x in 0...min(i-1,j) {
                        res += dp[i-1][j-x] % mod
                        res = res % mod
                    }
                    dp[i][j] = res
                }
            }
        }
        return dp[n][k]
    }
}