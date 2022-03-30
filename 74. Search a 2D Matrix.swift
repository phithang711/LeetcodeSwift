class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var rowIndex = matrix.count - 1
        
        if (rowIndex > 1) {
            for i in 0..<matrix.count - 1 {
                if target < matrix[i + 1][0] {
                    rowIndex = i
                    break
                }
            }
        }
        
        if (rowIndex == 1) {
            if target < matrix[1][0] {
                rowIndex = 0
            }
        }
        
        
        var left = 0
        var right = matrix[rowIndex].count - 1
        
        while (left < right) {
            var mid = (right - left) / 2 + left
            let pivot = matrix[rowIndex][mid]
            
            if (target == pivot) {
                return true
            }
            
            if (target < pivot) {
                right = mid
            } else {
                left = mid + 1
            }
        }
        
        if (matrix[rowIndex][left] == target) {
            return true
        }
        
        return false
    }
}