class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var checkArr = Array(repeating: Array(repeating: false, count: matrix[0].count), count: matrix.count)
        var result : [Int] = []
        
        generateArr(matrix, &checkArr, 0, 0, 0, &result)
        
        return result
    }
    
    func generateArr(_ matrix: [[Int]], _ checkArr: inout [[Bool]],_ i: Int,_ j: Int,_ direction: Int, _ result: inout [Int]) {
        if (checkArr[i][j] == true) {
            return   
        }
        
        checkArr[i][j] = true
        result.append(matrix[i][j])
        
        // right
        if (direction == 0) {
            if (j + 1 < checkArr[i].count) && (checkArr[i][j + 1] == false) {
                generateArr(matrix, &checkArr, i, j + 1, 0, &result)
            } else {
                // if can not go right, go down
                if (i + 1 < checkArr.count) && (checkArr[i + 1][j] == false) {
                    generateArr(matrix, &checkArr, i + 1, j, 1, &result)
                }
            }
        }
        
        // down
        if (direction == 1) {
            if (i + 1 < checkArr.count) && (checkArr[i + 1][j] == false) {
                generateArr(matrix, &checkArr, i + 1, j, 1, &result)
            } else {
                // if can not go down, go left
                if (j - 1 >= 0) && (checkArr[i][j - 1] == false) {
                    generateArr(matrix, &checkArr, i, j - 1, 2, &result)
                }
            }
        }
        
        // left
        if (direction == 2) {
            if (j - 1 >= 0) && (checkArr[i][j - 1] == false) {
                generateArr(matrix, &checkArr, i, j - 1, 2, &result)
            } else {
                // if can not go left, go up
                if (i - 1 >= 0) && (checkArr[i - 1][j] == false) {
                    generateArr(matrix, &checkArr, i - 1, j, 3, &result)
                }
            }
        }
        
        // up
        if (direction == 3) {
            if (i - 1 >= 0) && (checkArr[i - 1][j] == false) {
                generateArr(matrix, &checkArr, i - 1, j, 3, &result)
            } else {
                // if can not go up, go left
                if (j + 1 < checkArr[i].count) && (checkArr[i][j + 1] == false) {
                    generateArr(matrix, &checkArr, i, j + 1, 0, &result)
                }
            }
        }
    }
}