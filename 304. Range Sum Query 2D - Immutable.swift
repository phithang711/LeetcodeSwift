
class NumMatrix {
    var matrixSumWidth : [[Int]] = []
    
    init(_ matrix: [[Int]]) {
        matrixSumWidth = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {                
                if (j == 0) {
                    matrixSumWidth[i][j] = matrix[i][j]
                } else {
                    matrixSumWidth[i][j] = matrixSumWidth[i][j-1] + matrix[i][j]
                }
            }
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var result = 0
        for i in row1...row2 {
            if (col1 > 0) {
                result += matrixSumWidth[i][col2] - matrixSumWidth[i][col1 - 1]
            } else {
                result += matrixSumWidth[i][col2]
            }
        }
        
        return result
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */