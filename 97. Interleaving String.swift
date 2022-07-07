class Solution {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        if (s3.count != s1.count + s2.count) {
            return false
        }
        
        let arr1 = Array(s1)
        let arr2 = Array(s2)
        let arr3 = Array(s3)
        
        var dp: [[Bool]] = Array(repeating: Array(repeating: false, count: s2.count + 1), count: s1.count + 1)
        
        for i in 0...s1.count {
            for j in 0...s2.count {
                if i == 0 && j == 0 {
                    dp[i][j] = true
                    continue
                }
                
                if i == 0 {
                    dp[i][j] = dp[i][j-1] && arr2[j-1] == arr3[j-1]
                    continue
                }  
                
                if j == 0 {
                    dp[i][j] = dp[i-1][j] && arr1[i-1] == arr3[i-1]
                    continue
                } 
                
                dp[i][j] = (dp[i][j-1] && arr2[j-1] == arr3[i+j-1]) || (dp[i-1][j] && arr1[i-1] == arr3[i+j-1])
            }
        }
        
        return dp[s1.count][s2.count]
    }
}