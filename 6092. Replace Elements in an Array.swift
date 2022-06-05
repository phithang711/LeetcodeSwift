class Solution {
    func arrayChange(_ nums: [Int], _ operations: [[Int]]) -> [Int] {
        var saveIndex : [Int:Int] = [:]
        var nums = nums
        for i in 0..<nums.count {
            saveIndex[nums[i]] = i
        }
        
        for operation in operations {
            let index = saveIndex[operation[0]]
            nums[index!] = operation[1]
            saveIndex[operation[1]] = index
        }
        
        return nums
    }
}