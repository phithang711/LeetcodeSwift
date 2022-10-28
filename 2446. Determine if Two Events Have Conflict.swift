class Solution {
    func haveConflict(_ event1: [String], _ event2: [String]) -> Bool {
        let minVal = event1[1] < event2[1] ? event1 : event2
        let maxVal = event1[1] < event2[1] ? event2 : event1
        
        return minVal[1] >= maxVal[0] && minVal[1] <= maxVal[1]
    }
}