class Solution {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        // exception case
        if (k < 1) {
            return 0
        }
        
        var count = 0
        var temp = 1
        var left = 0
        
        for i in 0..<nums.count {
            temp *= nums[i]
            
            while (left <= i) && (temp >= k) {
                temp /= nums[left]
                left += 1
            }
            
            if (left <= i) {
                count += i - left + 1
            }
        }
        
        return count
        
        
    }
}