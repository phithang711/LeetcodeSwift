class Solution {
    func minDeletion(_ nums: [Int]) -> Int {
        var count = 0
        for i in 0..<nums.count - 1 {
            if ( (i - count) % 2 == 0) {
                if (nums[i] == nums[i+1]) {
                    count += 1
                }
            }
        }
        
        if (nums.count - count) % 2 != 0 {
            return count + 1
        } else {
            return count
        }
    }
}