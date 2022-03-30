class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var finalResult : [[Int]] = []
        var intervals = intervals
        intervals.sort { $0[0] < $1[0] }
        
        for interval in intervals {
            if (finalResult.count == 0) {
                finalResult.append(interval)
                continue
            }
                  
            var check = false
            
            for i in 0..<finalResult.count {
                if (check) { break }
                if (interval[0] > finalResult[i][1]) {
                    continue
                }
                
                 if (interval[1] <= finalResult[i][1]) && (interval[0] >= finalResult[i][0]) {
                    check = true
                    break
                }
                
                if (interval[0] <= finalResult[i][1]) {    
                    if (interval[1] >= finalResult[i][1]) {
                        finalResult[i][1] = interval[1]
                        check = true
                    }
                }
                
                if (interval[1] >= finalResult[i][0]) {
                    if (interval[0] <= finalResult[i][0]) {
                        finalResult[i][0] = interval[0]
                        check = true
                    }
                }
            }
            
            if (check == false) {
                finalResult.append(interval)
            }
        }
      
        return finalResult
    }
}