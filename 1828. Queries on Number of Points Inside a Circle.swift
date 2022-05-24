class Solution {
    func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
        var result : [Int] = []
        
        var count = 0
        
        for query in queries {
            count = 0
            for point in points {
                if distance(point, [query[0], query[1]], query[2]) {
                    count += 1
                }
            }
            
            result.append(count)
        }
        
        return result
    }
    
    func distance(_ point: [Int], _ circle: [Int], _ distance: Int) -> Bool {
        let temp = (point[0] - circle[0]) * (point[0] - circle[0]) + (point[1] - circle[1]) * (point[1] - circle[1])
        return temp <= (distance * distance) ? true : false
    }
}