class Solution {
    func triangleNumber(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort()
        var count = 0
        
        for i in 0..<nums.count - 1 {
            if nums[i] <= 0 {continue}
            for j in 1..<nums.count - i {
                let difference = nums[nums.count - j] - nums[i] + 1
               
                var searchIndex = binarySearchToFindIndex(nums, target: difference)
                if (searchIndex <= i) {
                    searchIndex = i + 1
                } 
                
                if (searchIndex >= nums.count - j) {
                    var temp = 1
                    while (nums[nums.count - j - temp] == nums[nums.count - j]) && (nums.count - j - temp > i) {
                        temp += 1
                    }
                    
                    if (temp != 1) {
                        count += temp - 1
                    }
                    
                    continue
                }

                count += nums.count - j - searchIndex
            }
            
        }
        
        return count
    }
    
    func binarySearchToFindIndex(_ nums: [Int], target: Int) -> Int {        
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
                while (mid >= 0) && (nums[mid] == target) {
                    mid -= 1
                }
                
                return mid + 1
            }
            
            if (nums[mid] < target) {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        if (nums[left] == target) {
            while (left >= 0) && (nums[left] == target) {
                left -= 1
            }
            
            return left + 1
        }
        
        if (nums[left] > target) {
            return left
        } else {
            return left + 1
        }
    }
}