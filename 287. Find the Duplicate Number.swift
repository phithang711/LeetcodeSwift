class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort()
        for i in 0..<nums.count {
            if (nums[i] == nums[i+1]) {
                return nums[i]
            }
        }
        
        return -1
    }
}