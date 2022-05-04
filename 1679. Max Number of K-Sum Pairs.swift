class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        nums.sort()
        
        // only two number is picked every time so we can use two pointer
        
        var left = 0
        var right = nums.count - 1
        var count = 0
        
        while (left < right) {
            if (nums[left] + nums[right] == k) {
                count += 1
                left += 1
                right -= 1
                continue
            }
            
            if (nums[left] + nums[right] > k) {
                right -= 1
            } else {
                left += 1
            }
        }
        
        return count
    }
}