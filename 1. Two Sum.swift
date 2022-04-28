class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var finalNums = nums
        var nums = nums
        nums.sort()
        
        var left = 0
        var right = nums.count - 1

        while (nums[left] + nums[right] != target) {
            if (right > 0) && (nums[left] + nums[right] > target) {
                right -= 1
            }
            
            if (left < nums.count - 1) && (nums[left] + nums[right] < target) {
                left += 1
            }
        }
        
        if (nums[left] == nums[right]) {
            let index = finalNums.firstIndex(of: nums[left])!
            finalNums.remove(at: index)
            return [index, finalNums.firstIndex(of: nums[right])! + 1]
        } else {
            return [finalNums.firstIndex(of: nums[left])!, finalNums.firstIndex(of: nums[right])!]
        }
    }
}