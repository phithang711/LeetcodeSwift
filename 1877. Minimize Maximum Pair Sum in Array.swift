class Solution {
    func minPairSum(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort { $0 < $1 }
        
        var left = 0
        var right = nums.count - 1
        
        var max = Int.min
        
        while (left < right) {
            let temp = nums[left] + nums[right]
            if max < temp {
                max = temp
            }
            
            left += 1
            right -= 1
        }
        
        return max
    }
}