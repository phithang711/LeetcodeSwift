class Solution {
    func minOperations(_ nums: [Int], _ x: Int) -> Int {
        // sliding window -> make max subarray with sum - x == value
        var sum = nums.reduce(0, +)
        if sum == x {
            return nums.count
        }
        
        if sum < x {
            return -1
        }
        
        var currentSum = 0
        var result = Int.max
        var x = sum - x
        var start = 0
        
        for i in 0..<nums.count {
            currentSum += nums[i]
            while currentSum > x {
                currentSum -= nums[start]
                start += 1
            }
            
            if currentSum == x {
                result = min(result, nums.count - (i - start + 1))
            }
        }
        
        return result == Int.max ? -1 : result
    }
}