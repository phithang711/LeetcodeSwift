class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var nums = nums
        nums.sort()
      
        if nums.count < 3 {
            return []
        }
        
        var finalResult : [[Int]] = []
        
        for i in 0..<nums.count-2 {
            if i > 0 && nums[i] == nums[i-1] { continue }
            
            var left = i + 1
            var right = nums.count - 1
            while (left < right) {
                if nums[i] + nums[left] + nums[right] < 0 {
                    left += 1
                } else if nums[i] + nums[left] + nums[right] == 0 {
                    if (!finalResult.contains([nums[i], nums[left], nums[right]])) {
                        finalResult.append([nums[i], nums[left], nums[right]])
                    }
                    
                    left += 1
                    right -= 1
                } else {
                    if (left < right) {
                        right -= 1
                        
                        if (left == right) {
                            left += 1
                            right = nums.count - right - 1
                        }
                    }
                }
            }
        }
        
        return Array(Set(finalResult))
    }
}