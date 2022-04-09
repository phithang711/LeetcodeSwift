class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if (nums.count == 0) {
            return [-1, -1]
        }
        
        if (nums.count == 1) {
            if (nums[0] == target) {
                return [0, 0]
            } else {
                return [-1, -1]
            }
        }
        
        if (nums.count == 2) {
            if (nums[0] == target) || (nums[1] == target) {
                if (nums[0] == target) && (nums[1] == target) {
                    return [0, 1]
                }
                
                if (nums[0] == target) {
                    return [0, 0]
                } else {
                    return [1, 1]
                }
            } else {
                return [-1, -1]
            }
        }
        
        var left = 0
        var right = nums.count - 1
        
        var start = 0
        var end = 0
        var mid = 0
        
        while ( left < right ) {
            mid = (left + right) / 2
            if (nums[mid] == target) {
                start = mid
                end = mid
                while start >= 0 && nums[start] == target {
                    start -= 1
                }
                
                while end <= nums.count - 1 && nums[end] == target {
                    end += 1
                }
                
                return [start + 1, end - 1]
            }
            
            if (nums[mid] > target) {
                right = mid
            } else {
                left = mid + 1
            }
        }
        
        if (nums[left] == target) {
            start = left
            end = left
            while start >= 0 && nums[start] == target {
                start -= 1
            }
                
            while end <= nums.count - 1 && nums[end] == target {
                end += 1
            }
                
            return [start + 1, end - 1]
        }
        
        return [-1, -1]
    }
}