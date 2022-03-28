class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var k = k
        while (k > nums.count) {
            k -= nums.count 
        }
        var firstArray = Array(nums.dropFirst(nums.count - k))
        let lastArray = Array(nums.dropLast(firstArray.count))
        
        firstArray.append(contentsOf: lastArray)
        nums = firstArray
    }
}