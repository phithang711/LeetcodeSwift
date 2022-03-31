class Solution {
    func splitArray(_ nums: [Int], _ m: Int) -> Int {
        let len = nums.count
        var dp = [[Int]](repeating: [Int](repeating: .max, count: m + 1), count: len + 1)
        var pref = [Int](repeating: 0, count: len + 1)
        for i in 0..<len {
            pref[i + 1] = pref[i] + nums[i]
        }
        dp[0][0] = 0
        for i in 1...len {
            for j in 1...m {
                for z in 0..<i {
                    dp[i][j] = min(dp[i][j], max(dp[z][j - 1], pref[i] - pref[z]))
                }
            }
        }
        return dp[len][m]
    }
}