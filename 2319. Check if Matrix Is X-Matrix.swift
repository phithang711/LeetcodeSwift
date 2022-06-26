class Solution {
    func checkXMatrix(_ grid: [[Int]]) -> Bool {
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if j != i && j != grid[i].count - i - 1 {
                    if grid[i][j] != 0 {
                        return false
                    }
                } else {
                    if grid[i][j] == 0 {
                        return false
                    }
                }
            }
        }
        
        return true
    }
}