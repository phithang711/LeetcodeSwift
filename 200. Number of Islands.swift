class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var count = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == "1" {
                    count += 1
                    expandIsland(&grid, i, j)
                } 
            }
        }
        
        return count
    }
    
    func expandIsland(_ grid: inout [[Character]],_ i: Int,_ j: Int) {
        if (i < 0) || (i >= grid.count) {
            return
        }
        
        if (j < 0) || (j >= grid[i].count) {
            return
        }
        
        if (grid[i][j] == "0") {
            return
        }
        
        if (grid[i][j] == "1") {
            grid[i][j] = "0"
            expandIsland(&grid, i-1, j)
            expandIsland(&grid, i+1, j)
            expandIsland(&grid, i, j-1)
            expandIsland(&grid, i, j+1)
        }
    }
}