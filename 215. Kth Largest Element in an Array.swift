class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        nums.sort {$0 > $1}
        return nums[k - 1]
    }
}