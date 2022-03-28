class Solution {
    func countHillValley(_ nums: [Int]) -> Int {
        var count = 0
        for i in 1..<(nums.count - 1) {
            var j = i + 1
 
            while (j < nums.count) && (nums[j] == nums[i]) {
                j += 1
                if (j >= nums.count) {
                    break
                }
            }
            
            if (j >= nums.count) {
                    break
            }

            if ((nums[i] > nums[i-1]) && (nums[i] > nums[j])) {
                count += 1
            }
            
            if ((nums[i] < nums[i-1]) && (nums[i] < nums[j])) {
                count += 1
            }
        }
        
        return count
    }
}