// first solution
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Bool { 
        if (nums.firstIndex(of: target) == nil) {
            return false
        }
        
        return true
    }
}