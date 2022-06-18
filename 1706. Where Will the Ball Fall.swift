class Solution {
    func findBall(_ grid: [[Int]]) -> [Int] {
        var result = Array(repeating: 0, count: grid[0].count)
        for j in 0..<result.count {
            result[j] = findIndex(grid, 0, j)
        }
        
        return result
    }
    
    func findIndex(_ grid: [[Int]], _ i: Int, _ j: Int) -> Int {
        if i == grid.count {
            if j < 0 || j >= grid[i - 1].count {
                return -1
            }
            return j
        }
        
        if j < 0 || j >= grid[i].count {
            return -1
        }
        
        if j + 1 < grid[i].count && grid[i][j] == 1 && grid[i][j + 1] == -1 {
            return -1
        }
        
        if j - 1 >= 0 && grid[i][j] == -1 && grid[i][j - 1] == 1 {
            return -1
        }
        
        return findIndex(grid, i + 1, j + grid[i][j])
    }
}