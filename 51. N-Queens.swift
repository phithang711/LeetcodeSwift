class Solution {
    func solveNQueens(_ n: Int) -> [[String]] {
        var matrix : [[String]] = Array(repeating: Array(repeating: ".", count: n), count: n)
        var solution : [[String]] = []
        
        self.makeQueenTable(matrix, 0, &solution)
        return solution
    }
    
    func makeQueenTable(_ matrix: [[String]], _ row: Int, _ solution: inout [[String]]) {
        var matrix = matrix
        var defaultMatrix = matrix
        
        for j in 0..<matrix[0].count {
            if matrix[row][j] != "." {
                continue
            }
            
            matrix[row][j] = "Q"
            
            if row == matrix[0].count - 1 {
                self.makeSolution(matrix, &solution)
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
    
    func makeSolution(_ matrix: [[String]], _ solution: inout [[String]]) {
        var result : [String] = []
        var temp = ""
        for line in matrix {
            temp = ""
            for char in line {
                if (char != "Q") {   
                    temp += "."
                } else {
                    temp += "Q"
                }
            }
            
            result.append(temp)
        }
        
        solution.append(result)
    }
}