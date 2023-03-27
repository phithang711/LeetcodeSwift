class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var grid = grid

        for j in 1..<grid[0].count {
            grid[0][j] += grid[0][j-1]
        }

        for i in 1..<grid.count {
            grid[i][0] += grid[i-1][0]
        }

        for i in 1..<grid.count {
            for j in 1..<grid[i].count {
                grid[i][j] += min(grid[i-1][j], grid[i][j-1])
            }
        }

        return grid[grid.count - 1][grid[0].count - 1]
    }
}