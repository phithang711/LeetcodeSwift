class Solution {
    func partitionArray(_ nums: [Int], _ k: Int) -> Int {
        if nums.count < 1 {
            return 0
        }
        
        var nums = nums
        nums.sort{$0<$1}
        
        var start = 0
        var count = 1
        for i in 0..<nums.count {
            if (nums[i] - nums[start] > k) {
                count += 1
                start = i
            }
        }
        
        return count
    }
}