class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        var count = 0
        var intervals = intervals
        var temp = intervals.count
        
        intervals = Array(Set(intervals))
        
        if temp > intervals.count {
            count += (temp - intervals.count)
        }
        
        intervals.sort { $0[0] < $1[0] }
        
        temp = intervals[0][1]
        
        for i in 1..<intervals.count {
            var array = intervals[i]
            
            if (array[0] < temp) {
                count += 1
                temp = min(temp, array[1])
            } else {
                temp = array[1]
            }
        }
        
        return count
    }
}