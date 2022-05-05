class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        return canJumpFromIndex(nums, 0)
    }
    
    func canJumpFromIndex(_ nums: [Int],_ index: Int) -> Bool {
        if (index >= nums.count - 1) {
            return true
        }
        
        var max = 0
        var nextIndex = index
        
        if (nums[index] == 0) {
            return false
        }
        
        for i in 1...nums[index] {
            if (index + i >= nums.count - 1) {
                return true
            }
            
            if max <= nums[index + i] + i {
                max = nums[index + i] + i
                nextIndex = index + i
            }
        }
        
        if (nextIndex == index) {
            return false
        } else {
            return canJumpFromIndex(nums, nextIndex)
        }
    }
}