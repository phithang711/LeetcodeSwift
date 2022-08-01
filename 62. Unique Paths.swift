class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
		var matrix = Array(repeating: Array(repeating: 0, count: n), count: m)
		
        for i in 0..<matrix.count {
            matrix[i][0] = 1
        }
        
        for j in 0..<matrix[0].count {
            matrix[0][j] = 1
        }
        
		for i in 1..<m {
			for j in 1..<n {
				matrix[i][j] = matrix[i - 1][j] + matrix[i][j - 1]
			}
		}

		return matrix[m - 1][n - 1]
    }
}