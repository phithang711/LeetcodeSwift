class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        if (nums.count == 1) {
            return nums[0]
        }
        
        var productLeft  = nums
        var productRight  = nums
        
        for i in 1..<productLeft.count {
            if (productLeft[i - 1] != 0) {
                productLeft[i] *= productLeft[i - 1]
            }   
        }
        
        for i in stride(from: productRight.count - 2, to: -1, by: -1) {
            if (productRight[i + 1] != 0) {
                productRight[i] *= productRight[i + 1]
            }
        }
        
        return max(productLeft.max()!, productRight.max()!, nums.max()!)
    }
}