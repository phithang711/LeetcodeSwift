class Solution {
    func wiggleMaxLength(_ nums: [Int]) -> Int {
        if nums.count < 2 {
            return 1
        }
        
        var leftArr = Array(repeating: 0, count: nums.count - 1)
        
        for i in 1..<nums.count {
            leftArr[i - 1] = nums[i] - nums[i - 1]
        }
        
        var checkPositive = true
        
        var startIndex = 0
        while (startIndex < leftArr.count) && (leftArr[startIndex] == 0) {
            startIndex += 1
        }
        
        if startIndex == leftArr.count {
            return 1
        }

        if leftArr[startIndex] < 0 {
            checkPositive = false
        }
        
        var longestWiggle = 2 
        for i in startIndex + 1..<leftArr.count {
            if checkPositive == true && leftArr[i] < 0 {
                longestWiggle += 1
                checkPositive = false
                continue
            }
            
            if checkPositive == false && leftArr[i] > 0 {
                longestWiggle += 1
                checkPositive = true
            }
        }
        
        return longestWiggle
    }
}