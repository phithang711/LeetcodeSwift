class Solution {
    func minMoves2(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort {$0 > $1}
        
        var median = nums[nums.count / 2]
        
        var result = 0
        
        for i in 0..<nums.count {
            result += abs(nums[i] - median)
        }
        
        return result
    }
}