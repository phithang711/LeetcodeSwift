class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort()
        return nums[(nums.count) / 2]
    }
}