class Solution {
    func totalNQueens(_ n: Int) -> Int {
        var matrix : [[String]] = Array(repeating: Array(repeating: ".", count: n), count: n)
        var solution = 0
        
        self.makeQueenTable(matrix, 0, &solution)
        return solution
    }
    
    func makeQueenTable(_ matrix: [[String]], _ row: Int, _ solution: inout Int) {
        var matrix = matrix
        var defaultMatrix = matrix
        
        for j in 0..<matrix[0].count {
            if matrix[row][j] != "." {
                continue
            }
            
            matrix[row][j] = "Q"
            
            if row == matrix[0].count - 1 {
                solution += 1
                return
            }
            
            // make obticals where has queens facing to
            for i in 1..<(matrix[0].count - row) {
                if j - i >= 0 {
                    matrix[row + i][j - i] = "#"
                }

                matrix[row + i][j] = "#"

                if i + j < matrix[0].count {
                    matrix[row + i][i + j] = "#"
                }
            }
            
            self.makeQueenTable(matrix, row + 1, &solution)
            matrix = defaultMatrix
        }
    }
}