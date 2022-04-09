class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        
        if (nums[left] < nums[right]) {
            while (left < right) {
                mid = (left + right) / 2
                if (nums[mid] == target) {
                    return mid
                }
                
                if (nums[mid] > target) {
                    right = mid
                } else {
                    left = mid + 1
                }
            }
            
            if (nums[left] == target) {
                return left
            } else {
                return -1
            }
        } else {
            while (left < right) {
                if (target == nums[right]) {
                    return right
                }
                
                if (target == nums[left]) {
                    return left
                }
                
                if (target < nums[right]) {
                    right -= 1
                } else {
                    left += 1
                }
            }
            
            if (target == nums[right]) {
                return right
            }
                
            if (target == nums[left]) {
                return left
            }
            
            return -1
        }
        
        return -1
    }
}