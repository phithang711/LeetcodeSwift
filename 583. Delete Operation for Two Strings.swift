class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        let word1 = word1.map{String($0)}
        let word2 = word2.map{String($0)}
        
        var dp = Array(repeating: Array(repeating: 0, count: word2.count), count: word1.count) 
        
        for i in 0..<word1.count {
            for j in 0..<word2.count {
                if i == 0 {
                    if j == 0 {
                        dp[0][0] = word1[0] == word2[0] ? 1 : 0
                    } else {
                        dp[0][j] = word1[0] == word2[j] ? 1 : dp[0][j-1]
                    }
                    
                    continue
                }
                
                if j == 0 {
                    dp[i][0] = word1[i] == word2[0] ? 1 : dp[i-1][0]
                } else {
                    dp[i][j] = max(dp[i-1][j], dp[i][j-1])
                    if word1[i] == word2[j] {
                        dp[i][j] = max(dp[i][j], dp[i-1][j-1] + 1)
                    }
                }
            }
        }
        
        return word1.count + word2.count - 2 * dp[word1.count - 1][word2.count - 1]
    }
}