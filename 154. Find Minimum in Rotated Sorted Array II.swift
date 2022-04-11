class Solution {
    func findMin(_ nums: [Int]) -> Int {
        if (nums.count == 1) {
            return nums[0]
        }
        
        var left = 0
        var right = nums.count - 1
        
        if (nums[left] < nums[right]) {
            return nums[left]
        }
        
        while (left < right) && (nums[left] == nums[right]) {
            right -= 1
        }
        
        let temp = right
        
        while (left < right) && (nums[left] > nums[right]) {
            right -= 1
        }
  
        if (temp == right) {
            if (nums[temp] > nums[temp + 1]) {
                return nums[temp + 1]
            } else {
                return nums[temp]
            }  
        }
        
        return nums[right + 1]
    }
}