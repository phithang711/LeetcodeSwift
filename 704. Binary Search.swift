// First solution
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        let index = nums.firstIndex(of: target)
        return index ?? -1
    }
}

// Second solution
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if (nums[0] == target) {
            return 0
        }
        
        if (nums[nums.count - 1] == target) {
            return nums.count - 1
        }
        
        var left = 0
        var right = nums.count - 1
        
        while (left < right) {
            let mid = (right - left) / 2 + left
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
        }
        
        return -1
    }
}