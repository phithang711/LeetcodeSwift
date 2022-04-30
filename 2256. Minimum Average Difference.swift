class Solution {
    func minimumAverageDifference(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        var nums = nums
        for i in 1..<nums.count {
            nums[i] += nums[i-1]
        }
        
        var index = 0
        var temp = 0
        var min = -1
        
        for i in 0..<nums.count - 1 {
            temp = abs(nums[i] / (i + 1) - (sum - nums[i]) / (nums.count - i - 1))
            
            if (min == -1) {
                min = temp
                index = i
                continue
            }
            
            if (min > temp) {
                min = temp
                index = i
                continue 
            }
        }
        
        if min > nums[nums.count - 1] / (nums.count) {
            return nums.count - 1
        } 
        
        return index
    }
}