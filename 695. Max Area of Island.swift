class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var checkArr: [[Bool]] = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        
        var max = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if (checkArr[i][j] == false) && (grid[i][j] == 1) {
                    var maxArea = 0
                    floodFillValue(grid: &grid, checkArr: &checkArr, sr: i, sc: j, count: &maxArea)
                    if (max < maxArea) {
                        max = maxArea
                    }
                }
            }
        }
        
        return max
    }
    
    func floodFillValue(grid: inout [[Int]], checkArr: inout [[Bool]], sr: Int, sc: Int, count: inout Int) {
        if checkArr[sr][sc] == true {
            return 
        }
        
        if (grid[sr][sc] == 1) {
            checkArr[sr][sc] = true
            count += 1
        } else {
            return 
        }
        
        
        
        if (sr - 1 >= 0) && (checkArr[sr - 1][sc] == false) {
            floodFillValue(grid: &grid, checkArr: &checkArr, sr: sr - 1, sc: sc, count: &count)
        }
        
        if (sr + 1 < grid.count) && (checkArr[sr + 1][sc] == false) {
            floodFillValue(grid: &grid, checkArr: &checkArr, sr: sr + 1, sc: sc, count: &count)
        }
        
        if (sc - 1 >= 0) && (checkArr[sr][sc - 1] == false) {
            floodFillValue(grid: &grid, checkArr: &checkArr, sr: sr, sc: sc - 1, count: &count)
        }
        
        if (sc + 1 < grid[sr].count) && (checkArr[sr][sc + 1] == false) {
            floodFillValue(grid: &grid, checkArr: &checkArr, sr: sr, sc: sc + 1, count: &count)
        }
    }
}
