class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sumArr : [Int] = Array(repeating: 0, count: nums.count)
        sumArr[0] = nums[0]
        for i in 1..<nums.count {
            sumArr[i] = sumArr[i - 1] + nums[i]
        }
        
        return sumArr
    }
}