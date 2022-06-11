class Solution {
    func countSubarrays(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        var startIndex = 0
        var check = 0

        for i in 0..<nums.count {
            check += nums[i]
            while check * (i - startIndex + 1) >= k {
                check -= nums[startIndex]
                startIndex += 1
            }
            
            result += (i - startIndex + 1)
        }
        
        return result
    }
}