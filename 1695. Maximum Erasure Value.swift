class Solution {
    func maximumUniqueSubarray(_ nums: [Int]) -> Int {
        var dict : [Int:Int] = [:]
        
        var start = 0
        var result = 0
        var subSum = 0
        
        for i in 0..<nums.count {
            subSum += nums[i]
            if (dict[nums[i]] == nil) {
                dict[nums[i]] = 1
            } else {
                dict[nums[i]] = dict[nums[i]]! + 1
            }
            
            while start < i && dict[nums[i]]! > 1 {
                subSum -= nums[start]
                dict[nums[start]] = dict[nums[start]]! - 1
                start += 1
            }
            
            result = max(result, subSum)
        }
        
        return result
    }
}