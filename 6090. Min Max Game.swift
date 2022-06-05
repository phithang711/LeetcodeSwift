class Solution {
    func minMaxGame(_ nums: [Int]) -> Int {
        var temp : [Int] = []
        var nums = nums
        while nums.count != 1 {
            temp = Array(repeating: 0, count: nums.count / 2)
            for i in 0..<temp.count {
                if (i % 2 == 0) {
                    temp[i] = min(nums[2*i], nums[2*i + 1])
                    continue
                }
                
                temp[i] = max(nums[2 * i], nums[2 * i + 1])
            }
            
            nums = temp
        }
        
        return nums[0]
    }
}