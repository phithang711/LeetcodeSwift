class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var nums = nums1 + nums2
        
        nums.sort()
        
        if (nums.count % 2 == 0) {
            return Double(nums[nums.count / 2] + nums[nums.count / 2 - 1]) / 2.0
        } 
        
        return Double(nums[nums.count / 2])
    }
}