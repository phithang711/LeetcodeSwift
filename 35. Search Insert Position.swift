class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if target == nums[0] {
                return 0
        }
        
        if target == nums[nums.count - 1] {
            return nums.count - 1
        }
        
        if target > nums[nums.count - 1] {
            return nums.count
        }
        
        if (nums.count == 1) {
            if target > nums[0] {
                return 1
            }
        }
        
        var left = 0
        var right = nums.count - 1
        
        while (left < right) {
            var mid = (right - left) / 2 + left
            
            if (nums[mid] == target) {
                return mid
            }
            
            if (nums[mid] < target) {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        if (nums[left] >= target) {
            return left
        } else {
            return left + 1
        }
        
    }
}