class Solution {
    func jump(_ nums: [Int]) -> Int {
        if (nums.count == 1) {
            return 0
        }
        
        return canJumpFromIndex(nums, 0, 1)
    }
    
    func canJumpFromIndex(_ nums: [Int],_ index: Int, _ count: Int) -> Int {
        if (index >= nums.count - 1) {
            return count
        }
        
        var max = 0
        var nextIndex = index
        
        for i in 1...nums[index] {
            if (index + i >= nums.count - 1) {
                return count
            }
            
            if max <= nums[index + i] + i {
                max = nums[index + i] + i
                nextIndex = index + i
            }
        }
        
        return canJumpFromIndex(nums, nextIndex, count + 1)
    }
}