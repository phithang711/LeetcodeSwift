class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        
        var onlyInt = 0
        for num in nums {
            onlyInt ^= num
        }
        
        return onlyInt
    }
}