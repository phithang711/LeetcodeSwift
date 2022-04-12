class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        
        if (nums.count == 1) {
            return nums[0]
        }
        
        if (nums[nums.count - 1] != nums[nums.count - 2]) {
            return nums[nums.count - 1]
        }
        
        if (nums[0] != nums[1]) {
            return nums[0]
        }
        
        var midValue = 0
        var leftMidValue = 0
        var rightMidValue = 0
        
        while (left < right) {
            mid = (left + right) / 2
            midValue = nums[mid]
            leftMidValue = nums[mid - 1]
            rightMidValue = nums[mid + 1]
            
            if (midValue != rightMidValue) && (midValue != leftMidValue) {
                return nums[mid]
            }
            
            if (midValue == leftMidValue) {
                if ((mid - 1 - left) % 2 == 0) {
                    left = mid + 1
                } else {
                    right = mid - 2
                }
            }
            
            if (midValue == rightMidValue) {
                if ((right - mid + 1) % 2 == 0) {
                    right = mid - 1
                } else {
                    left = mid + 2
                }
            } 
        }
        
        return nums[left]
    }
}