class Solution {
    func rob(_ nums: [Int]) -> Int {
        var nums = nums
        if (nums.count == 1) {
            return nums[0]
        }
        
        if (nums.count == 2) {
            return nums[0] > nums[1] ? nums[0] : nums[1]
        }
        
        if (nums.count == 3) {
            return nums[0] + nums[2] > nums[1] ? nums[0] + nums[2] : nums[1]
        }

        var i = nums.count - 4
        // this variable only have 1 step chance
        nums[nums.count - 3] += nums[nums.count - 1]
        
        // cover all the 2 step chance
        while (i >= 0) {
            nums[i] = nums[i] + nums[i + 2] > nums[i] + nums[i + 3] ? nums[i] + nums[i + 2] : nums[i] + nums[i + 3]
            i -= 1
        }
        
        return nums[0] > nums[1] ? nums[0] : nums[1] 
    }
}