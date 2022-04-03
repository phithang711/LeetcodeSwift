class Solution {
    func triangularSum(_ nums: [Int]) -> Int {
        var nums = nums
        while nums.count != 1 {
            var s : [Int] = []
            
            for i in 0..<nums.count - 1 {
                var sum = nums[i] + nums[i + 1]
                sum = sum > 9 ? sum % 10 : sum
                s.append(sum)
            }
            
            nums = s
        }
        
        return nums[0] > 9 ? nums[0] % 10 : nums[0]
    }
}