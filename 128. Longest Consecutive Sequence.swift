class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var dict : [Int: Bool] = [:]
        
        for num in nums {
            if dict[num] == nil {
                dict[num] = true
            }
        }
        
        var maxLen = 0
        
        for num in nums {
            var len = 1
            var temp = num
            if dict[temp] == true {
                dict[temp] = false
                while dict[temp - 1] != nil {
                    temp -= 1
                    dict[temp] = false
                    len += 1
                }
            }
            
            
            maxLen = max(len, maxLen)
        }
        
        return maxLen
    }
}