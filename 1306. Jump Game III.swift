class Solution {
    func canReach(_ arr: [Int], _ start: Int) -> Bool {
        var check : [Bool] = Array(repeating: false, count: arr.count)
        return canJumpFromIndex(arr, &check, start)
    }
    
    func canJumpFromIndex(_ nums: [Int],_ check: inout [Bool], _ index: Int) -> Bool {
        if (check[index] == true) {
            return false
        }
        
        check[index] = true
        
        if (nums[index] == 0) {
            return true
        }
        
        var toLeft = false
        var toRight = false
        
        if (index - nums[index] >= 0) && (check[index - nums[index]] == false) {
            toLeft = canJumpFromIndex(nums, &check, index - nums[index])
        }
        
        if (toLeft == true) {
            return true
        }
        
        if (index + nums[index] < nums.count) && (check[index + nums[index]] == false) {
            toRight = canJumpFromIndex(nums, &check, index + nums[index])
        }
        
        if (toRight == true) {
            return true
        }
        
        return false   
    }
}