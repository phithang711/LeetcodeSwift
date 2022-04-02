class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var firstIndex = -1
        var count = 0
        var finalCount = 0
        var tempSum = 0
        for i in 0..<nums.count {
            if (nums[i] >= target) {
                return 1 
            }
            
            if (firstIndex == -1) {
                firstIndex = i
                count += 1
                tempSum += nums[i]
                continue
            } 
            
            if (tempSum + nums[i] < target) {
                tempSum += nums[i]
                count += 1
                continue
            }
            
            tempSum += nums[i]
            count += 1
            
            while (tempSum > target) {
                tempSum -= nums[firstIndex]
                firstIndex += 1
                count -= 1
            }
            
            if (finalCount == 0) || (finalCount > count) {
                finalCount = count + 1
            }
                
            if (tempSum == target) {
                if (finalCount == 0) || (finalCount > count) {
                    finalCount = count
                }
                
                tempSum -= nums[firstIndex]
                firstIndex += 1
                count -= 1
            } 
        }
        
        return finalCount == 0 ? 0 : finalCount
    }
}