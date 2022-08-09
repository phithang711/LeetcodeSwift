class Solution {
    func numFactoredBinaryTrees(_ arr: [Int]) -> Int {
        var arr = arr
        let mod = 1000000007
        arr.sort{$0 < $1} 
        
        var dp = [Int: Int]()
        
        for i in 0..<arr.count {
            dp[arr[i]] = 1
            
            for j in 0..<i {
                if arr[i] % arr[j] != 0 {
                    continue
                }
                
                dp[arr[i], default: 0] += dp[arr[j], default: 0] * dp[arr[i] / arr[j], default: 0]
            } 
        }
        
        return dp.values.reduce(0, +) % mod
    }
}