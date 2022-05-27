class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort{ $0 < $1 }
        
        for i in 0..<nums.count - 1 {
            if nums[i] == nums[i + 1] {
                if nums[i] == nums[i + nums.count / 2 - 1] {
                    return nums[i]
                }
                
            }
        }
        
        
        return -1   
    }
}