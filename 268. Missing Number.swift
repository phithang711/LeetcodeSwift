class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort()
        
        if nums.count <= 1 {
            if nums[0] > 0 {
                return 0
            } else {
                return 1
            }
        }
        
        if nums[0] > 0 {
            return 0
        }
        
        for i in 1..<nums.count {
            if (nums[i] != nums[i - 1] + 1) {
                return nums[i - 1] + 1
            }
        }
        
        return nums[nums.count - 1] + 1
    }
}