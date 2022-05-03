class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        var leftInd = -1
        var rightInd = -1
        
        var maxNum = nums[0]
        var minNum = nums[nums.count - 1]
        for i in 0..<nums.count {
            maxNum = max(maxNum, nums[i])
            minNum = min(minNum, nums[nums.count - 1 - i])
            
            if nums[i] < maxNum {
                rightInd = i
            }
            
            if nums[nums.count - 1 - i] > minNum {
                leftInd = nums.count - 1 - i
            }
        }
        
        if (rightInd != leftInd) {
            return rightInd - leftInd + 1
        } else {
            return 0
        }
    }
}