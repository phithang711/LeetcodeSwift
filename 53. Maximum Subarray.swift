class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxNum = nums.max()!
        
        if maxNum < 0 {
            return maxNum
        } 
        
        var sum = 0
        maxNum = 0
        
        for i in 0..<nums.count {
            if sum + nums[i] < 0 {
                sum = 0
                continue
            } 
            
            sum += nums[i]
            maxNum = max(maxNum, sum)
        }
        
        return maxNum
    }
}