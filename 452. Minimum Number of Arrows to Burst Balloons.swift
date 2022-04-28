class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        var count = 1
        var points = points
        var temp = points.count
        
        points = Array(Set(points))
        
        points.sort { $0[0] < $1[0] }
        
        temp = points[0][1]
        
        for i in 1..<points.count {
            var array = points[i]
            
            if (array[0] <= temp) {
                temp = min(temp, array[1])
            } else {
                count += 1
                temp = array[1]
            }
        }
        
        return count
    }
}