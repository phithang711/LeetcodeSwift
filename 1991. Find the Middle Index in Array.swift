class Solution {
    func findMiddleIndex(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        var left = 0
        for i in 0..<nums.count {
            if (left == sum - left - nums[i]) {
                return i
            }
            
            left += nums[i]
        }
        
        return -1
    }
}