class Solution {
    func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
        var result : [[Int]] = []
        
        var intervals = firstList + secondList
        intervals.sort {$0[0] < $1[0]}
        
        var temp = intervals[0][1]
        
        for i in 1..<intervals.count {
            var tempInterval = intervals[i]
            
            if (temp < tempInterval[1]) {
                if (temp >= tempInterval[0]) {
                    result.append([tempInterval[0], temp])
                }
                
                temp = tempInterval[1]
                continue
            }
            
            if (temp >= tempInterval[1]) {
                result.append(tempInterval)
            }
        }
        
        return result
    }
}