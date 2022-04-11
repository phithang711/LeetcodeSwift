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
        
        while (nums[left] > nums[right]) {
            right -= 1
        }
        
        return nums[right + 1]
    }
}