class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        var increase = nums
        var decrease = nums
        
        increase.sort { $0 < $1 }
        decrease.sort { $0 > $1 }
        
        if (increase == nums) || (decrease == nums) {
            return true
        }
        
        return false
    }
}