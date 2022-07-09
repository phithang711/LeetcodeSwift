class Solution {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        
        var stackArr : [Int] = [nums[0]]
        
        var prev = nums[0]
        
        for i in 1..<nums.count {
            let val = prev + nums[i]
            stackArr.append(val)
            prev = max(prev, val)
            
            if stackArr.count > k {
                if stackArr.removeFirst() == prev {
                    prev = stackArr.reduce(Int.min, max)
                }
            }
        }
        
        return stackArr.last!
    }
}