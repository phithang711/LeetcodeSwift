class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        if triangle.count == 1 {
            return triangle[0][0]
        }
        
        var triangle = triangle
        
        for i in stride(from: triangle.count - 2,to: -1, by: -1) {
            for j in stride(from: triangle[i].count - 1,to: -1, by: -1) {
                triangle[i][j] = min(triangle[i][j] + triangle[i+1][j], triangle[i][j] + triangle[i+1][j+1])
            }
        }
        return triangle[0][0]
    }
}