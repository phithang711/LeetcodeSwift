class Solution {
    func waysToSplitArray(_ nums: [Int]) -> Int {
        var count = 0
        
        var sum : [Int] = Array(repeating: 0, count: nums.count)
        
        sum[0] = nums[0]
        
        for i in 1..<nums.count {
            sum[i] = sum[i - 1] + nums[i]
        }
        
        for i in 0..<nums.count - 1 {
            if (sum[i] >= sum[nums.count - 1] - sum[i]) {
                count += 1
            }
        }
        
        return count
    }
}