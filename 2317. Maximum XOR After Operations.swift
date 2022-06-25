class Solution {
    func maximumXOR(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result |= num
        }
        
        return result
    }
}