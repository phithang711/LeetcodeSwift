class Solution {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        var newMatrix : [Int] = []
        
        for arr in matrix {
            newMatrix += arr
        }
        
        newMatrix.sort{$0<$1}
        
        return newMatrix[k - 1]
    }
}