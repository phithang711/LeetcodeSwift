class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var start = 0
        var nums = nums
        
        for i in 0..<nums.count {
            if (nums[i] % 2 == 0) {
                if (start < i) {
                    var temp = nums[start]
                    nums[start] = nums[i]
                    nums[i] = temp
                    start += 1
                    continue
                }
                
                if (start == i) {
                    start += 1
                    continue
                }
            }
        }
        
        return nums
    }
}