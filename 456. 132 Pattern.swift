class Solution {
    func find132pattern(_ nums: [Int]) -> Bool {
        if (nums.count <= 2) {
            return false
        }
        
        var left = Array(repeating: 0, count: nums.count)
        var resultArr : [Int] = []
        
        left[0] = nums[0]
        
        for i in 1..<nums.count {
           left[i] = min(nums[i], left[i - 1])
        }
        
        for i in stride(from: nums.count - 1, to: -1, by: -1) {
            if (resultArr.count > 0) {
                while (resultArr.count > 0) && (resultArr[resultArr.count - 1] <= left[i]) {
                    resultArr.removeLast()
                }
            }
            
            if (resultArr.count == 0) {
                resultArr.append(nums[i])
                continue
            }
            
            if (resultArr[resultArr.count - 1] >= nums[i]) {
                resultArr.append(nums[i])
                continue
            }
            
            // the final variable already < nums[i]
            
            if (resultArr[resultArr.count - 1] > left[i]) {
                return true
            }
            
        }
        
        return false
    }
}