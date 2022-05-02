class Solution {
    func sortEvenOdd(_ nums: [Int]) -> [Int] {
        var even : [Int] = []
        var odd : [Int] = []
        
        var nums = nums
        
        // 0 for even, 1 for odd
        for i in 0..<nums.count {
            if i % 2 == 0 {
                even.append(nums[i])
                nums[i] = 0
            } else {
                odd.append(nums[i])
                nums[i] = 1
            }
        }
        
        even.sort { $0 < $1 }
        odd.sort { $0 > $1 }
        
        var startEven = 0
        var startOdd = 0
        
        for i in 0..<nums.count {
            if (i % 2 == 0) {
                nums[i] = even[startEven]
                startEven += 1
            } else {
                nums[i] = odd[startOdd]
                startOdd += 1
            }
        }
        
        return nums
    }
}