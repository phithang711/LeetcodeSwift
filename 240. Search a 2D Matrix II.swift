class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var i = 0
        var j = 0
        while (i < matrix.count) {
            if (matrix[i][j] > target) {
                return false
            }
            
            while (j < matrix[i].count) {
                if (matrix[i][j] == target) {
                    return true
                }
                
                if (matrix[i][j] > target) {
                    j -= 1
                    
                    for z in i+1..<matrix.count {
                        if matrix[z][j] == target {
                            return true
                        }
                        
                        if matrix[z][j] > target {
                            break
                        }
                    }
                    break
                }
                
                if (matrix[i][j] < target) {
                    j += 1
                }
            }
            
            i += 1
            j = 0
        }
        
        return false
    }
}