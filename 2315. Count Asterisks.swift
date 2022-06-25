class Solution {
    func countAsterisks(_ s: String) -> Int {
        var temp = 0
        var checkCount : [Int] = []
        for char in s {
            if char == "|" {
                checkCount.append(temp)
                temp = 0
                continue
            }
            
            if char == "*" {
                temp += 1
                continue
            }
        }
        
        checkCount.append(temp)
        
        var finalCount = 0
        
        for i in stride(from: 0, to: checkCount.count, by: 2) {
            finalCount += checkCount[i]
        }
        
        return finalCount
    }
}