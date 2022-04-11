class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }
        
        if nums.count == 2 {
            if (nums[0] > nums[1]) {
                return 0
            } else {
                return 1
            }
        }
        
        for i in 1..<nums.count { 
            if (i == nums.count - 1) {
                if (nums[i] > nums[i - 1]) {
                    return i
                }
                
                continue
            }
            
            if nums[i] > nums[i - 1] && nums[i] > nums[i + 1] {
                return i
            }
        }
        
        return 0
    }
}