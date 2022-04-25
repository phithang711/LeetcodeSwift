class Solution {
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        var max = 0
        var tempSquare = 0
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == "1" {
                    tempSquare = checkSquare(matrix, i, j)
                    
                    if (max < tempSquare) {
                        max = tempSquare
                        if (max == matrix.count * matrix[i].count) && (matrix.count == matrix[i].count) {
                            return max 
                        }
                    }
                }
            }
        }
        
        return max
    }
    
    func checkSquare(_ matrix: [[Character]],_ i: Int,_ j: Int) -> Int {
        var count = 0

        var check = true
       
        while check {
            count += 1
            
            if (count + j >= matrix[i].count) {
                return count * count
            }
            
            if (count + i >= matrix.count) {
                return count * count
            }
            
            for x in i...i + count {
                for y in j...j + count {
                    if (matrix[x][y] == "0") {
                        return count * count
                    }
                }
            }
        }

        return count * count
    }
}