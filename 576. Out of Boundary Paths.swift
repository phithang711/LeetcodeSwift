class Solution {
    func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
        let mod = 1000000007
        var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: n + 2), count: m + 2)
        var result = 0
        
        dp[startRow + 1][startColumn + 1] = 1
        
        for step in 0..<maxMove {
            let dpCopy = dp
            for row in 0...(m + 1) {
                for col in 0...(n + 1) {
                    if row == 0 {
                        result = (result + dpCopy[row + 1][col]) % mod
                    } else if row == m + 1 {
                        result = (result + dpCopy[row - 1][col]) % mod
                    } else if col == 0 {
                        result = (result + dpCopy[row][col + 1]) % mod
                    } else if col == n + 1 {
                        result = (result + dpCopy[row][col - 1]) % mod
                    } else {
                        dp[row][col] = (
                                (row > 1 ? dpCopy[row - 1][col] : 0) +
                                (row < m ? dpCopy[row + 1][col] : 0) +
                                (col > 1 ? dpCopy[row][col - 1] : 0) +
                                (col < n ? dpCopy[row][col + 1] : 0)
                            ) % mod
                    }
                }
            }
        }
        
        return result
    }
}