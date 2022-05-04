class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var result : [Int] = []
        
        var startNums1 = 0
        var startNums2 = 0
        
        while (startNums1 < m) && (startNums2 < n) {
            if (nums1[startNums1] < nums2[startNums2]) {
                result.append(nums1[startNums1])
                startNums1 += 1
            } else {
                result.append(nums2[startNums2])
                startNums2 += 1
            }
        }
        
        while (startNums1 < m) {
            result.append(nums1[startNums1])
            startNums1 += 1
        }
        
        while (startNums2 < n) {
            result.append(nums2[startNums2])
            startNums2 += 1
        }
        
        nums1 = result
    }
}