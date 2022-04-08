class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
        nums = nums.filter { $0 != 0 }
        for _ in nums.count..<count {
            nums.append(0)
        }
    }
}