class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        if nums.count <= 1 {
            return 0
        }
        
        var nums = nums
        var count = 0
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                continue
            } 
            
            count += nums[i - 1] - nums[i] + 1
            nums[i] = nums[i - 1] + 1
        }
        
        return count
    }
}