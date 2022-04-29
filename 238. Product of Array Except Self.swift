class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var product = 1
       // var result = []
        var nums = nums
        
        var countZero = 0
        var check = false
        for num in nums {
            if (num != 0) {
                product *= num
                check = true
            } else {
                countZero += 1
            }
        }
        
        if (countZero > 0) {
            for i in 0..<nums.count {
                if (nums[i] != 0) {
                    nums[i] = 0
                } else {
                    if (check) && (countZero == 1) {
                        nums[i] = product
                    } else {
                        nums[i] = 0
                    } 
                }
            }
        } else {
            for i in 0..<nums.count {
                nums[i] = product / nums[i]
            }
        }
        
        return nums
    }
}